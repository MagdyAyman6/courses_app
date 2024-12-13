import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/screens/forgot_password_screen.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/signup_screen.dart';
import '../../features/auth/screens/success_screen.dart';
import '../../features/home/presentation/views/widgets/my_home_page_view_body.dart';
import '../../features/splash/presentation/on_boarding_view.dart';
import '../../features/splash/presentation/splash_view.dart';

abstract class AppRouter {

  static const kOnboardingView = '/OnboardingView';
  static const kSignInSignUpView = '/SignInSignUpView';
  static const kForgetPassView = '/ForgetPassView';
  static const kVerificationCodeView = '/VerificationCodeView';
  static const kMyHomeView = '/MyHomeView';
  static const kMyLogin = '/login';
  static const kSuccessScreen = '/SuccessScreen';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingView();
        },
      ),
      GoRoute(
        path: kSignInSignUpView,
        builder: (BuildContext context, GoRouterState state) {
          return const SignupScreen();
        },
      ),
      GoRoute(
        path: kForgetPassView,
        builder: (BuildContext context, GoRouterState state) {
          return const ForgotPasswordScreen();
        },
      ),
      // GoRoute(
      //   path: kVerificationCodeView,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const VerificationCodeView();
      //   },
      // ),
      GoRoute(
        path: kMyHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return MyHomePageViewBody();
        },
      ),
      GoRoute(
        path: kSuccessScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SuccessScreen();
        },
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      // GoRoute(
      //   path: '/success',
      //   builder: (context, state) => const SuccessScreen(),
      // ),
      // GoRoute(
      //   path: '/forgot-password',
      //   builder: (context, state) => const ForgotPasswordScreen(),
      // ),
    ],
  );
}