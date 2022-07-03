import 'package:ezy_share/Screens/faq.dart';
import 'package:ezy_share/Screens/my_account.dart';
import 'package:ezy_share/contact.dart';
import 'package:ezy_share/Screens/settings.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
            ),
            accountName: const Text(
              'Easy share',
              style: TextStyle(fontSize: 18),
            ),
            accountEmail: const Text('www.shresthaventures.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "lib/image/logo.png",
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.id);
            },
            child: const ListTile(
              leading: Icon(
                Icons.person,
                size: 24,
              ),
              title: Text(
                'My Account',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
              size: 24,
            ),
            title: const Text(
              'Follow and invite friends',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () async {},
          ),
          const ListTile(
            leading: Icon(
              Icons.security,
              size: 24,
            ),
            title: Text(
              'Security',
              style: TextStyle(fontSize: 18),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SettingsScreen.id);
            },
            child: const ListTile(
              leading: Icon(
                Icons.settings,
                size: 24,
              ),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, FAQ.id);
            },
            child: const ListTile(
              leading: Icon(
                Icons.help,
                size: 24,
              ),
              title: Text(
                'FAQ',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, Contact.id);
            },
            leading: Icon(
              Icons.contact_phone,
              size: 24,
            ),
            title: Text(
              'Contact',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.info,
              size: 24,
            ),
            title: Text(
              'About us',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
