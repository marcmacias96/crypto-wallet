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
  final _limit = 20;
  ContactListBloc(this._contactRepository) : super(ContactListState.initial());

  @override
  Stream<ContactListState> mapEventToState(ContactListEvent gEvent) async* {
    yield* gEvent.map(
      watchStarted: (e) async* {
        yield state.copyWith(
          isLoading: true,
          loadFailureOrSuccessOption: none(),
        );
        if (state.hasMore) {
          add(_ContactsRecived(await _contactRepository.watchAll(_limit)));
        } else {
          yield state.copyWith(
            isLoading: false,
            loadFailureOrSuccessOption: none(),
          );
        }
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
            var actualContacs = state.contacts.toMutableList();
            actualContacs.addAll(contacts.asIterable());
            yield state.copyWith(
              isLoading: false,
              hasMore: contacts.size >= _limit,
              loadFailureOrSuccessOption: none(),
              contacts: actualContacs,
            );
          },
        );
      },
      delete: (e) async* {},
    );
  }
}