
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
}
