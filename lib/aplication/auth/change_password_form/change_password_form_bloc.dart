import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';

part 'change_password_form_event.dart';
part 'change_password_form_state.dart';
part 'change_password_form_bloc.freezed.dart';

@injectable
class ChangePasswordFormBloc
    extends Bloc<ChangePasswordFormEvent, ChangePasswordFormState> {
  final IAuthFacade _authFacade;

  ChangePasswordFormBloc(this._authFacade)
      : super(ChangePasswordFormState.initial());

  @override
  Stream<ChangePasswordFormState> mapEventToState(
      ChangePasswordFormEvent event) async* {
    yield* event.map(
      passwordChanged: (e) async* {
        yield state.copyWith(
            password: Password(e.passwordStr),
            changeFailureOrSuccessOption: none());
      },
      newpasswordChanged: (e) async* {
        yield state.copyWith(
            newpassword: Password(e.newpasswordStr),
            changeFailureOrSuccessOption: none());
      },
      confirmpasswordChanged: (e) async* {
        yield state.copyWith(
            confirmpassword: Password(e.confirmpasswordStr),
            changeFailureOrSuccessOption: none());
      },
      changePasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithPassword(
          _authFacade.changePassword,
        );
      },
    );
  }

  Stream<ChangePasswordFormState> _performActionOnAuthFacadeWithPassword(
    Future<Either<AuthFailure, AccountType>> Function({
      required String password,
      required String newpassword,
      required String confirmpassword,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, AccountType>? failureOrSuccess;
    final isPasswordValid = state.password.isValid();
    final isNewPasswordValid = state.newpassword.isValid();
    final isConfirmPasswordValid = state.confirmpassword.isValid();

    if (isPasswordValid && isNewPasswordValid && isConfirmPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        changeFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await forwardedCall(
        password: state.password.getOrCrash(),
        newpassword: state.newpassword.getOrCrash(),
        confirmpassword: state.confirmpassword.getOrCrash(),
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      changeFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
