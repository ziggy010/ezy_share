import 'package:ezy_share/Screens/about_us.dart';
import 'package:ezy_share/Screens/card_details.dart';
import 'package:ezy_share/Screens/choose_cards_screen.dart';
import 'package:ezy_share/Screens/document_scan.dart';
import 'package:ezy_share/Screens/faq.dart';
import 'package:ezy_share/Screens/home.dart';
import 'package:ezy_share/Screens/homepage.dart';
import 'package:ezy_share/Screens/onboarding_scree.dart';
import 'package:ezy_share/Screens/profile_screen.dart';
import 'package:ezy_share/Screens/qr_code.dart';
import 'package:ezy_share/Screens/register_screen.dart';
import 'package:ezy_share/Screens/reset_password.dart';
import 'package:ezy_share/Screens/saved_card_screen.dart';
//import 'package:ezy_share/Screens/saved_pop_up_screen.dart';
import 'package:ezy_share/Screens/settings.dart';
import 'package:ezy_share/Screens/sign_in.dart';
import 'package:ezy_share/Screens/my_account.dart';
import 'package:ezy_share/Screens/contact.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: OnboardingScreen.id,
        routes: {
          OnboardingScreen.id: (context) => OnboardingScreen(),
          Home.id: (context) => Home(),
          HomePage.id: (context) => HomePage(),
          SignIn.id: (context) => SignIn(),
          RegisterScreen.id: (context) => RegisterScreen(),
          CardScreen.id: (context) => CardScreen(),
          ProfileScreen.id: (context) => ProfileScreen(),
          SettingsScreen.id: (context) => SettingsScreen(),
          FAQ.id: (context) => FAQ(),
          AboutScreen.id: (context) => AboutScreen(),
          Contact.id: (context) => Contact(),
          SavedCard.id: (context) => SavedCard(),
          Profile.id: (context) => Profile(),
          ChooseCardScreen.id: (context) => const ChooseCardScreen(),
          ResetPassword.id: (context) => ResetPassword(),
          DocumentScan.id: (context) => const DocumentScan(),
          ScanQrPage.id: (context) => ScanQrPage(),
        },
      ),
      designSize: const Size(390, 844),
    );
  }
}
