import 'package:bloc/bloc.dart';
import 'package:crypto_wallet/domain/contacts/i_contact_repository.dart';
import 'package:crypto_wallet/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/contacts/contact.dart';
import '../../../domain/core/firestore_failure.dart';

part 'contact_form_bloc.freezed.dart';
part 'contact_form_event.dart';
part 'contact_form_state.dart';

@injectable
class ContactFormBloc extends Bloc<ContactFormEvent, ContactFormState> {
  final IContactRepository _contactRepository;

  ContactFormBloc(this._contactRepository) : super(ContactFormState.initial());

  @override
  Stream<ContactFormState> mapEventToState(ContactFormEvent gEvent) async* {
    yield* gEvent.map(
      initialized: (e) async* {
        yield e.contact.fold(
          () => state.copyWith(
            contact: state.contact.copyWith(address: e.address),
            saveFailureOrSuccessOption: none(),
          ),
          (contact) => state.copyWith(
            isEditing: true,
            saveFailureOrSuccessOption: none(),
          ),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          contact: state.contact.copyWith(name: Name(e.name)),
          saveFailureOrSuccessOption: none(),
        );
      },
      save: (e) async* {
        Either<FirestoreFailure, Unit>? failureOrSuccess;
        yield state.copyWith(isSaving: true);
        final isNameValid = state.contact.name.isValid();

        if (isNameValid) {
          if (state.isEditing) {
            failureOrSuccess = await _contactRepository.update(state.contact);
          } else {
            failureOrSuccess = await _contactRepository.create(state.contact);
          }
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
