import 'package:ezy_share/Screens/about_us.dart';
import 'package:ezy_share/Screens/faq.dart';
import 'package:ezy_share/Screens/my_account.dart';
import 'package:ezy_share/Screens/saved_card_screen.dart';
import 'package:ezy_share/Screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Profile extends StatefulWidget {
  String? userId;
  static const String id = 'profile';
  Profile({Key? key, this.userId}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text("Profile"),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 170,
            width: 450,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.black]),
              shape: BoxShape.rectangle,
            ),
            child: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "lib/image/profile.png",
                  fit: BoxFit.cover,
                  width: 146,
                  height: 146,
                ),
              ),
            ),
          ),
          ElevatedButton(
            child: const Text('Edit Profile'),
            onPressed: () {
              Navigator.pushNamed(context, ProfileScreen.id);
            },
          ),
          Row(
            children: const [],
          ),
          Container(
            height: 498,
            width: 498,
            color: Colors.black,
            child: ListView(children: [
              ListTile(
                subtitle: const Text(
                  'Darkmode',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: ToggleSwitch(
                  minWidth: 55.0,
                  minHeight: 45.0,
                  initialLabelIndex: 0,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  icons: const [
                    Icons.lightbulb_circle_outlined,
                    Icons.lightbulb_circle,
                  ],
                  iconSize: 30.0,
                  activeBgColors: const [
                    [Colors.black45, Colors.black],
                    [Colors.blue, Colors.blue]
                  ],
                  animate: true,
                  curve: Curves.bounceInOut,
                  onToggle: (index) {
                    ('switched to: $index');
                  },
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Saved',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pushNamed(context, SavedCard.id);
                },
              ),
              ListTile(
                title: const Text(
                  'Follow and invite friends',
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
                title: const Text(
                  'Security',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Settings',
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
                title: const Text(
                  'About us',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pushNamed(context, AboutScreen.id);
                },
              ),
              ListTile(
                title: const Text(
                  'FAQs',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pushNamed(context, FAQ.id);
                },
              ),
              ListTile(
                title: const Text(
                  'Help',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
