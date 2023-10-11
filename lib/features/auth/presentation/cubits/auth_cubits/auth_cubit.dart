
import 'package:bloc/bloc.dart';
import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  late String? firstName;
  late String? lastName;
  late String? password;
  late String? emailAddress;
  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpSuccessState());
      print('sent');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(errMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }
}
