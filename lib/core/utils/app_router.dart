import 'package:course_app/features/home/presentation/views/widgets/my_home_page_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presentation/on_boarding_view.dart';
import '../../features/splash/presentation/splash_view.dart';

abstract class AppRouter {
  // SignInSignUpView; VerificationCodeView
  static const kOnboardingView = '/OnboardingView';
  static const kSignInSignUpView = '/SignInSignUpView';
  static const kForgetPassView = '/ForgetPassView';
  static const kVerificationCodeView = '/VerificationCodeView';
  static const kMyHomeView = '/MyHomeView';

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
      // GoRoute(
      //   path: kSignInSignUpView,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const SignInSignUpView();
      //   },
      // ),
      // GoRoute(
      //   path: kForgetPassView,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const ForgetPasswordView();
      //   },
      // ),
      // GoRoute(
      //   path: kVerificationCodeView,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const VerificationCodeView();
      //   },
      // ),
      GoRoute(
        path: kMyHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const MyHomePageViewBody();
        },
      ),
    ],
  );
}
