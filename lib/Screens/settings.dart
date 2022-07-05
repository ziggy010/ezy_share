import 'package:ezy_share/Screens/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SettingsScreen extends StatefulWidget {
  static const String id = 'settingScreen';
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lockInBackground = true;

  bool isAccountClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text('Settings'),
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.grey.shade900,
      ),
      body: Container(
        height: 650.h,
        width: 498.w,
        color: Colors.grey.shade900,
        child: ListView(children: [
          ListTile(
            title: Text(
              'Main',
              style: TextStyle(color: Colors.grey.shade300, fontSize: 15),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: const Text(
              'Account Preference',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              isAccountClicked
                  ? Icons.keyboard_arrow_down_sharp
                  : Icons.keyboard_arrow_right_outlined,
              color: Colors.white,
            ),
            onTap: () {
              setState(() {
                isAccountClicked = !isAccountClicked;
              });
            },
          ),
          Visibility(
            visible: isAccountClicked ? true : false,
            child: ListTile(
              title: const Text(
                'Change Password',
                style: TextStyle(color: Colors.white),
              ),
              leading: const Icon(
                Icons.password_sharp,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pushNamed(context, ResetPassword.id);
              },
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.fingerprint,
              color: Colors.white,
            ),
            title: const Text(
              'Biometric',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right_sharp,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            title: const Text(
              'Notification',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right_sharp,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(
              Icons.privacy_tip,
              color: Colors.white,
            ),
            title: const Text(
              'Data Privacy',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right_sharp,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.policy_sharp,
              color: Colors.white,
            ),
            title: const Text(
              'Privacy Policy',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right_sharp,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.handshake,
              color: Colors.white,
            ),
            title: const Text(
              'User Agreement',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right_sharp,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: const Text(
              'Sign out',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right_sharp,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, SettingsScreen.id);
            },
          ),
          ListTile(
            title: const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  //textAlign: TextAlign.center,
                  'Version 1.1.2', style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
