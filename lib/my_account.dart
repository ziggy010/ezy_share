import 'package:flutter/material.dart';
import 'package:ezy_share/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const String id = 'ProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        bottomOpacity: 0,
        elevation: 0,
        title: const Text('My Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 140,
              width: 350,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.circular(15),
              // ),
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset('lib/image/profile.png'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AccountContainer(
              specificHeight: 60,
              specificTitle: 'Name',
              specificSubTitle: 'Bibek shrestha',
            ),
            const SizedBox(
              height: 10,
            ),
            AccountContainer(
              specificHeight: 60,
              specificTitle: 'Email',
              specificSubTitle: 'bibek@gmail.com',
            ),
            const SizedBox(
              height: 10,
            ),
            AccountContainer(
              specificHeight: 60,
              specificTitle: 'Phone',
              specificSubTitle: '98xxxxxx',
            ),
            const SizedBox(
              height: 10,
            ),
            AccountContainer(
              specificHeight: 60,
              specificTitle: 'Address',
              specificSubTitle: 'Chabahil, Kathmandu',
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            AccountContainer(
              specificHeight: 60,
              specificTitle: 'Joined on',
              specificSubTitle: 'July,01,2020',
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 70,
              width: 350,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'EDIT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountContainer extends StatelessWidget {
  final double specificHeight;
  final String specificTitle;
  final Widget? profileIcon;
  final String specificSubTitle;

  AccountContainer({
    required this.specificHeight,
    required this.specificTitle,
    this.profileIcon,
    required this.specificSubTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: specificHeight,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
