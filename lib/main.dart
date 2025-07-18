import 'package:flutter/material.dart';
import 'package:masseges_app/screens/chat_screen.dart';
import 'package:masseges_app/screens/registertion_screen.dart';
import 'package:masseges_app/screens/sign_in_screen.dart';
import 'screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masseges App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: WelcomeScreen(),
      initialRoute:
          _auth.currentUser != null
              ? ChatScreen.chatRoute
              : WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        SigninScreen.signinRoute: (context) => SigninScreen(),
        RegistertionScreen.regisertionRoute: (context) => RegistertionScreen(),
        ChatScreen.chatRoute: (context) => ChatScreen(),
      },
    );
  }
}
