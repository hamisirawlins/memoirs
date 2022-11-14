import 'package:flutter/material.dart';

import '../widgets/rounded_button.dart';
import 'login_screen.dart';
import 'sign_up.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
              "assets/images/organizer.png",
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            const Text(
              "Transcending A Lifetime",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "Login",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            RoundedButton(
              text: "Sign Up",
              textColor: Color.fromARGB(255, 242, 237, 237),
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            )
          ],
        ),
      ))),
    );
  }
}
