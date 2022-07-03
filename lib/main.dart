import 'package:ezy_share/Screens/about_us.dart';
import 'package:ezy_share/Screens/card_details.dart';
import 'package:ezy_share/Screens/faq.dart';
import 'package:ezy_share/Screens/homepage.dart';
import 'package:ezy_share/Screens/onboarding_scree.dart';
import 'package:ezy_share/Screens/profile_screen.dart';
import 'package:ezy_share/Screens/register_screen.dart';
import 'package:ezy_share/Screens/saved_card_screen.dart';
import 'package:ezy_share/Screens/settings.dart';
import 'package:ezy_share/Screens/sign_in.dart';
import 'package:ezy_share/Screens/my_account.dart';
import 'package:ezy_share/contact.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: OnboardingScreen.id,
        routes: {
          OnboardingScreen.id: (context) => OnboardingScreen(),
          HomePage.id: (context) => HomePage(),
          SignIn.id: (context) => SignIn(),
          RegisterScreen.id: (context) => RegisterScreen(),
          CardScreen.id: (context) => CardScreen(),
          ProfileScreen.id: (context) => ProfileScreen(),
          SettingsScreen.id: (context) => SettingsScreen(),
          FAQ.id: (context) => FAQ(),
          AboutScreen.id: (context) => AboutScreen(),
          SavedCard.id: (context) => SavedCard(),
          Profile.id: (context) => Profile(),
        },
      ),
      designSize: const Size(390, 844),
    );
  }
}
