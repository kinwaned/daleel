
import 'package:bloc/bloc.dart';
import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

   String? firstName;
   String? lastName;
   String? password;
   String? emailAddress;
   GlobalKey<FormState> signUpFormKey = GlobalKey();
   GlobalKey<FormState> signInFormKey = GlobalKey();

   bool? obscurePasswordTextValue = true;

   bool? termAndConditionsCheckBox = false;
  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
       await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpSuccessState());
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

  updateTermAndConditionsCheckBox({required newValue}){
    termAndConditionsCheckBox = newValue;
    emit(TermsAndConditionsCheckBoxState());
  }

  obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  signInWithEmailAndPassword() async{
    try {
      emit(SignInLoadingState());
     await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress!,
          password: password!
      );
     emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureState(errMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SignInFailureState(errMessage: 'Wrong password provided for that user.'));
      }else {
      emit(SignInFailureState(errMessage: 'Double check your Email and Password!'));
      }
    } catch (e){
      emit(SignInFailureState( errMessage: e.toString(),));
    }
  }
}
