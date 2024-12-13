import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/logo.png', height: 100),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "phone",
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue)),
              child: const Center(child: Text("Reset password")),
            ),
          ],
        ),
      ),
    );
  }
}
