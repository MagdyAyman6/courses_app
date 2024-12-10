import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../core/utils/app_router.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child:   ElevatedButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kMyHomeView);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

extension on GestureDetector {
  style({required EdgeInsets padding, required RoundedRectangleBorder shape}) {}
}
