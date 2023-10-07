import 'package:daleel/features/auth/presentation/views/signin_view.dart';
import 'package:daleel/features/auth/presentation/views/sinup_view.dart';
import 'package:daleel/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:daleel/features/splash/presentation/view/splash_view.dart';
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
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: '/SignIn',
      builder: (context, state) => const SignInView(),
    ),
  ],
);
