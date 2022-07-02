import 'package:ezy_share/Screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileScreen extends StatefulWidget {
  String? userId;
  static const String id = 'profileScreen';
  ProfileScreen({Key? key, this.userId}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Colors.grey.shade900,
        title: Text("Profile"),
      ),
      body: Container(
        color: Colors.grey.shade900,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: GestureDetector(
                    child: Image.asset(
                      'lib/image/profile.png',
                      height: 160,
                      width: 160,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 220, 0),
                  child: Text(
                    "Full name",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 50,
                  width: 300,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Bibek Shrestha ",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 220, 0),
                  child: Text(
                    "     Phone number",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 50,
                  width: 300,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "98xxxxxx",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 220, 0),
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 50,
                  width: 300,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "bibek@gmail.com",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 220, 0),
                  child: Text(
                    "Address",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 50,
                  width: 300,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Chabahil, kathmandu",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50)),
                ),
                SizedBox(
                  height: 15,
                ),

                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: (() => SignIn()),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(95, 0, 0, 0),
                      child: Row(
                        children: [Icon(Icons.logout), Text("Logout")],
                      ),
                    ),
                  ),
                ),
                // ActionChip(
                //     backgroundColor: Colors.teal,
                //     label: Text("Logout"),
                //     onPressed: () {
                //       logout(context);
                //     })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
