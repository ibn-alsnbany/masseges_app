import 'package:flutter/material.dart';
import 'package:masseges_app/screens/registertion_screen.dart';
import 'package:masseges_app/screens/sign_in_screen.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                // ignore: sized_box_for_whitespace
                Container(height: 180, child: Image.asset('images/logo.png')),
                Text(
                  'Massege App',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'Sign In',
              onPressed: () {
                Navigator.pushNamed(context, SigninScreen.signinRoute);
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'register',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RegistertionScreen.regisertionRoute,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
