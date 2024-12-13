import 'package:course_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

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
                labelText: "user name",
                prefixIcon: Icon(Icons.person),
              ),
            ),
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
            TextFormField(
              obscureText: isConfirmPasswordHidden,
              decoration: InputDecoration(
                labelText: "confirm password",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(isConfirmPasswordHidden
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isConfirmPasswordHidden = !isConfirmPasswordHidden;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // تنفيذ منطق إنشاء الحساب
                // Navigator.pushReplacementNamed(context, '/success');
                GoRouter.of(context).push(AppRouter.kSuccessScreen);
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue)),
              child: const Center(child: Text("sign up")),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, '/login');
                  GoRouter.of(context).push(AppRouter.kMyLogin);
                },
                child: const Center(child: Text("Don't Have Account ؟ login")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
