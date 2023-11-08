
abstract class AuthState {}

final class AuthInitial extends AuthState {}
final class SignUpLoadingState extends AuthState {}
final class SignUpSuccessState extends AuthState {}
final class SignUpFailureState extends AuthState {
  final String errMessage;

  SignUpFailureState({required this.errMessage});
}

final class SignInLoadingState extends AuthState {}
final class SignInSuccessState extends AuthState {}
final class SignInFailureState extends AuthState {
  final String errMessage;

  SignInFailureState({required this.errMessage});
}


final class ForgetPasswordLoadingState extends AuthState {}
final class ForgetPasswordSuccessState extends AuthState {}
final class ForgetPasswordFailureState extends AuthState {
  final String errMessage;

  ForgetPasswordFailureState({required this.errMessage});
}
final class TermsAndConditionsCheckBoxState extends AuthState {}

final class ObscurePasswordTextUpdateState extends AuthState {}