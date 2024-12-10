import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/images/logo.png', height: 100), // اللوجو
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "user name",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            TextFormField(
              obscureText: isPasswordHidden,
              decoration: InputDecoration(
                labelText: "password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(isPasswordHidden ? Icons.visibility_off : Icons.visibility),
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
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(isConfirmPasswordHidden ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isConfirmPasswordHidden = !isConfirmPasswordHidden;
                    });
                  },
                ),
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // تنفيذ منطق إنشاء الحساب
                Navigator.pushReplacementNamed(context, '/success');
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: Center(child: Text("sign up")),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Center(child: Text("Dont Have Account ؟ login")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
