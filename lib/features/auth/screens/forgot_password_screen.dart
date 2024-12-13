
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
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
              decoration: InputDecoration(
                labelText: "phone",
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: Center(child: Text("Reset password")),
            ),
          ],
        ),
      ),
    );
  }
}
