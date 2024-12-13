import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordNavigation extends StatelessWidget {
  const ForgotPasswordNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.go('/forgot-password');
      },
      child: const Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
