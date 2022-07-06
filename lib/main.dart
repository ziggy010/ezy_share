import 'package:ezy_share/Screens/about_us.dart';
import 'package:ezy_share/Screens/card_details.dart';
import 'package:ezy_share/Screens/choose_cards_screen.dart';
import 'package:ezy_share/Screens/document_scan.dart';
import 'package:ezy_share/Screens/faq.dart';
import 'package:ezy_share/Screens/home.dart';
import 'package:ezy_share/Screens/homepage.dart';
import 'package:ezy_share/Screens/onboarding_scree.dart';
import 'package:ezy_share/Screens/pop_up_screen2.dart';
import 'package:ezy_share/Screens/profile_screen.dart';
import 'package:ezy_share/Screens/qr_code.dart';
import 'package:ezy_share/Screens/register_screen.dart';
import 'package:ezy_share/Screens/reset_password.dart';
import 'package:ezy_share/Screens/saved_card_screen.dart';
import 'package:ezy_share/Screens/saved_pop_up_screen.dart';
//import 'package:ezy_share/Screens/saved_pop_up_screen.dart';
import 'package:ezy_share/Screens/settings.dart';
import 'package:ezy_share/Screens/sign_in.dart';
import 'package:ezy_share/Screens/my_account.dart';
import 'package:ezy_share/Screens/contact.dart';
import 'package:ezy_share/Screens/your_qr_code.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_actions/quick_actions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final quickActions = QuickActions();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quickActions.setShortcutItems(
      [
        ShortcutItem(
          type: 'Scan',
          localizedTitle: 'Scan Code',
          icon: 'qr_scan.png',
        ),
        ShortcutItem(
          type: 'Share',
          localizedTitle: 'Share Code',
          icon: 'share.png',
        ),
      ],
    );

    quickActions.initialize((type) {
      if (type == 'Scan') {
        Navigator.pushNamed(context, ScanQrPage.id);
      } else if (type == 'Share') {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return MyQrCode();
            },
          ),
        );
      }
    });
  }

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
          MyQrCode.id: (context) => MyQrCode(),
        },
      ),
      designSize: const Size(390, 844),
    );
  }
}
