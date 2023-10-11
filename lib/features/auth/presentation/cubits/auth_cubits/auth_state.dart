
abstract class AuthState {}

class AuthInitial extends AuthState {}
class SignUpLoadingState extends AuthState {}
class SignUpSuccessState extends AuthState {}
class SignUpFailureState extends AuthState {
  final String errMessage;

  SignUpFailureState({required this.errMessage});
}
