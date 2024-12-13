import 'package:course_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:
                  Image.asset('assets/images/logo.png', height: 100), // اللوجو
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            TextFormField(
              obscureText: isPasswordHidden,
              decoration: InputDecoration(
                labelText: "password",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(isPasswordHidden
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isPasswordHidden = !isPasswordHidden;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // context.go('/MyHomeView');
                GoRouter.of(context).pushReplacement(AppRouter.kMyHomeView);
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue)),
              child: const Center(child: Text("login")),
            ),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, '/forgot-password');
                  GoRouter.of(context).push(AppRouter.kForgetPassView);
                },
                child: const Center(child: Text("forget your password?")),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Navigator.pushReplacementNamed(context, '/signup');
                GoRouter.of(context).push(AppRouter.kSignInSignUpView);

              },
              child: const Center(child: Text("Don't Have Account? login ")),
            ),
          ],
        ),
      ),
    );
  }
}
