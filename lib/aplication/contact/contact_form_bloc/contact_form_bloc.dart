import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/contacts/contact.dart';
import '../../../domain/contacts/i_contact_repository.dart';
import '../../../domain/contacts/value_objects.dart';
import '../../../domain/core/firestore_failure.dart';
import '../../../domain/core/value_objects.dart';

part 'contact_form_bloc.freezed.dart';
part 'contact_form_event.dart';
part 'contact_form_state.dart';

@injectable
class ContactFormBloc extends Bloc<ContactFormEvent, ContactFormState> {
  final IContactRepository _contactRepository;

  ContactFormBloc(this._contactRepository) : super(ContactFormState.initial());

  @override
  Stream<ContactFormState> mapEventToState(ContactFormEvent gEvent) async* {
    yield* gEvent.map(initialized: (e) async* {
      yield state.copyWith(
        isEditing: false,
        contact: e.contact,
        saveFailureOrSuccessOption: none(),
      );
    }, nameChanged: (e) async* {
      yield state.copyWith(
        contact: state.contact.copyWith(name: Name(e.name)),
        saveFailureOrSuccessOption: none(),
      );
    }, addressChanged: (e) async* {
      yield state.copyWith(
        contact: state.contact.copyWith(address: Address(e.address)),
      );
    }, save: (e) async* {
      Either<FirestoreFailure, Unit>? failureOrSuccess;
      yield state.copyWith(isSaving: true);
      final isNameValid = state.contact.name.isValid();
      final isAddressValid = state.contact.address.isValid();

      if (isNameValid && isAddressValid) {
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
    }, isEditing: (e) async* {
      yield state.copyWith(
        isEditing: !state.isEditing,
        saveFailureOrSuccessOption: none(),
      );
    }, delete: (e) async* {
      Either<FirestoreFailure, Unit>? failureOrSuccess;

      failureOrSuccess = await _contactRepository.dalete(e.contact);
      yield state.copyWith(
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        isDeleting: true,
      );
    });
  }
}
