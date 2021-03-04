import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:authentication_screens/ui/constants.dart';
import 'package:authentication_screens/ui/screens/welcome_screen.dart';
import 'package:authentication_screens/ui/screens/sign_in_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        SignInScreen.id: (context) => SignInScreen(),
      },
    );
  }
}
