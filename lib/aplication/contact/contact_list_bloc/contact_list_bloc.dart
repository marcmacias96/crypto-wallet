import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/contacts/contact.dart';
import '../../../domain/contacts/i_contact_repository.dart';
import '../../../domain/core/firestore_failure.dart';

part 'contact_list_bloc.freezed.dart';
part 'contact_list_event.dart';
part 'contact_list_state.dart';

@injectable
class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  final IContactRepository _contactRepository;
  final _limit = 20000;
  ContactListBloc(this._contactRepository) : super(ContactListState.initial());
  StreamSubscription<Either<FirestoreFailure, KtList<Contact>>>?
      _contactStreamSubscription;

  @override
  Stream<ContactListState> mapEventToState(ContactListEvent gEvent) async* {
    yield* gEvent.map(
        watchStarted: (e) async* {
          yield state.copyWith(
            isLoading: true,
            loadFailureOrSuccessOption: none(),
          );
          await _contactStreamSubscription?.cancel();
          _contactStreamSubscription =
              _contactRepository.watchAll(_limit).listen((faliureOrContacts) {
            add(_ContactsRecived(faliureOrContacts));
          });
        },
        contactsRecived: (e) async* {
          yield* e.failureOrContacts.fold(
            (failure) async* {
              yield state.copyWith(
                isLoading: false,
                loadFailureOrSuccessOption: optionOf(failure),
              );
            },
            (contacts) async* {
              yield state.copyWith(
                isLoading: false,
                loadFailureOrSuccessOption: none(),
                contacts: contacts,
              );
            },
          );
        },
        delete: (e) async* {},
        searchChange: (e) async* {
          if (e.name.isNotEmpty) {
            var contacts = state.contacts.asList();
            var searchList = contacts
                .where((f) => f.name
                    .getOrCrash()
                    .toLowerCase()
                    .startsWith(e.name.toLowerCase()))
                .toImmutableList();
            yield state.copyWith(
              contactsFiltered: searchList,
              isSearching: true,
            );
          } else {
            yield state.copyWith(
              isSearching: false,
            );
          }
        });
  }

  @override
  Future<void> close() async {
    await _contactStreamSubscription?.cancel();
    return super.close();
  }
}
