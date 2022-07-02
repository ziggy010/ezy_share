import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatefulWidget {
  static const String id = 'settingScreen';
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lockInBackground = true;

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
        //decoration: BoxDecoration(color: Colors.red),
        // height: 100,

        child: SettingsList(
          sections: [
            SettingsSection(
              title: const Text('Common'),
              tiles: [
                SettingsTile(
                  title: const Text('Language'),
                  //subtitle: const Text('English'),
                  leading: const Icon(Icons.language),
                ),
                SettingsTile(
                    title: const Text('Environment'),
                    //subtitle: 'Production',
                    leading: const Icon(Icons.cloud_queue)),
              ],
            ),
            SettingsSection(
              title: const Text('Account'),
              tiles: [
                SettingsTile(
                    title: const Text('Phone number'),
                    leading: const Icon(Icons.phone)),
                SettingsTile(
                    title: const Text('Email'),
                    leading: const Icon(Icons.email)),
                SettingsTile(
                    title: const Text('Sign out'),
                    leading: const Icon(Icons.exit_to_app)),
              ],
            ),
            SettingsSection(
              title: const Text('Secutiry'),
              tiles: [
                SettingsTile.switchTile(
                  title: const Text('Lock app in background'),
                  leading: const Icon(Icons.phonelink_lock),
                  // switchValue: lockInBackground,
                  onToggle: (bool value) {
                    setState(() {
                      lockInBackground = value;
                    });
                  },
                  initialValue: null,
                ),
                SettingsTile.switchTile(
                  title: const Text('Change account password'),
                  leading: const Icon(Icons.lock),
                  // switchValue: true,
                  onToggle: (bool value) {}, initialValue: null,
                ),
              ],
            ),
            SettingsSection(
              title: const Text('Misc'),
              tiles: [
                SettingsTile(
                    title: const Text('Terms of Service'),
                    leading: const Icon(Icons.description)),
                SettingsTile(
                    title: const Text('Open source licenses'),
                    leading: const Icon(Icons.collections_bookmark)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
