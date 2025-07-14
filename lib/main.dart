import 'package:flutter/material.dart';
import 'package:masseges_app/screens/chat_screen.dart';
import 'package:masseges_app/screens/registertion_screen.dart';
import 'package:masseges_app/screens/sign_in_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masseges App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        SigninScreen.signinRoute: (context) => SigninScreen(),
        RegistertionScreen.regisertionRoute: (context) => RegistertionScreen(),
        ChatScreen.chatRoute: (context) => ChatScreen(),
      },
    );
  }
}
