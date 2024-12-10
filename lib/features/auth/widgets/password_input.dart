import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: const Icon(Icons.lock),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
