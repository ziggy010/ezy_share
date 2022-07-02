import 'package:ezy_share/constant.dart';
import 'package:ezy_share/Screens/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:ezy_share/Screens/navbar.dart';

import '../components/reusable_cards.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade900,
      body: Column(children: [
        Stack(
          children: [
            Positioned(
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(180.0, 70.0),
                    bottomRight: Radius.elliptical(180.0, 70.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Container(
                height: 570,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(18.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My cards',
                          style: kMyCardTextStyle,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Choose your cards',
                          style: kMyCardSubTextStyle,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ReusableCards(),
                        SizedBox(
                          height: 15,
                        ),
                        ReusableCards(),
                        SizedBox(
                          height: 15,
                        ),
                        ReusableCards(),
                        SizedBox(
                          height: 15,
                        ),
                        ReusableCards(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.translate(
        offset: const Offset(0, -10),
        child: FloatingActionButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScanQrPage())),
          elevation: 2.0,
          child: const Icon(
            Icons.qr_code_rounded,
            size: 48,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationView(),
    );
  }
}

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0.0, -10),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: ShapeDecoration(
          color: Colors.blueAccent,
          shape: MyBorderShape(),
          shadows: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 8.0, offset: Offset(1, 1)),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildMiddleTabItem(),
          ],
        ),
      ),
    );
  }
}

Widget _buildMiddleTabItem() {
  return Expanded(
    child: SizedBox(
      height: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          SizedBox(height: 24),
          Text(''),
        ],
      ),
    ),
  );
}

class MyBorderShape extends ShapeBorder {
  MyBorderShape();

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  // Path? getInnerPath(Rect rect, {required TextDirection textDirection}) => null;

  double holeSize = 70;

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    (rect.height);
    return Path.combine(
      PathOperation.difference,
      Path()
        ..addRRect(
            RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 2)))
        ..close(),
      Path()
        ..addOval(Rect.fromCenter(
            center: rect.center.translate(0, -rect.height / 2),
            height: holeSize,
            width: holeSize))
        ..close(),
    );
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    throw UnimplementedError();
  }
}
