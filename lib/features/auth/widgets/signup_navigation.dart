import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupNavigation extends StatelessWidget {
  const SignupNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t have an account?'),
        TextButton(
          onPressed: () {
            context.go('/signup');
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
