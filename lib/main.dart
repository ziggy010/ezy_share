import 'package:ezy_share/Screens/card_details.dart';
import 'package:ezy_share/Screens/homepage.dart';
import 'package:ezy_share/Screens/onboarding_scree.dart';
import 'package:ezy_share/Screens/register_screen.dart';
import 'package:ezy_share/Screens/sign_in.dart';
import 'package:ezy_share/my_account.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingScreen.id,
      routes: {
        OnboardingScreen.id: (context) => OnboardingScreen(),
        HomePage.id: (context) => HomePage(),
        SignIn.id: (context) => SignIn(),
        RegisterScreen.id: (context) => RegisterScreen(),
        CardScreen.id: (context) => CardScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
      },
    );
  }
}
