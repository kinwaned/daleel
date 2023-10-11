// import 'package:daleel/core/utils/app_strings.dart';
// import 'package:daleel/core/widgets/custom_btn.dart';
// import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_cubit.dart';
// import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_state.dart';
// import 'package:daleel/features/auth/presentation/widgets/custom_text_field.dart';
// import 'package:daleel/features/auth/presentation/widgets/terms_and_conditions.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class CustomSignUpForm extends StatelessWidget {
//   const CustomSignUpForm({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AuthCubit, AuthState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return Form(
//             child: Column(
//           children: [
//             CustomFormTextField(
//                 labelText: AppStrings.firstName, onChanged: (firstName) {
//               BlocProvider.of<AuthCubit>(context)
//                   .firstName = firstName;
//             }),
//             CustomFormTextField(
//                 labelText: AppStrings.lastName, onChanged: (lastName) {
//               BlocProvider.of<AuthCubit>(context)
//                   .lastName = lastName;
//             }),
//             CustomFormTextField(
//                 labelText: AppStrings.emailAddress,
//                 onChanged: (email) {
//                   BlocProvider.of<AuthCubit>(context)
//                       .emailAddress = email;
//                 }),
//             CustomFormTextField(
//                 labelText: AppStrings.password, onChanged: (password) {
//               BlocProvider.of<AuthCubit>(context)
//                   .password = password;
//             }),
//             const TermsAndConditionsWidget(),
//             const SizedBox(
//               height: 120,
//             ),
//             SliverToBoxAdapter(
//               child: CustomBtn(
//                   text: AppStrings.signUp,
//                   onPressed: () {
//                     BlocProvider.of<AuthCubit>(context)
//                         .signUpWithEmailAndPassword();
//                   }),
//             ),
//           ],
//         ));
//       },
//     );
//   }
// }
