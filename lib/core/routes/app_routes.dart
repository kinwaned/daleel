import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_cubit.dart';
import 'package:daleel/features/auth/presentation/views/sign_in_view.dart';
import 'package:daleel/features/auth/presentation/views/sin_up_view.dart';
import 'package:daleel/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:daleel/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: '/signUp',
      builder: (context, state) =>
          BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignUpView(),
          ),
    ),
    GoRoute(
      path: '/SignIn',
      builder: (context, state) =>
          BlocProvider(
            create: (context) => AuthCubit(),
            child: SignInView(),
          ),
    ),
  ],
);
