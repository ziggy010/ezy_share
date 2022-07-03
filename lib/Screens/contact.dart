import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  static const String id = 'ContactScreen';
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: const Text("Contact us"),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: 250,
            child: Lottie.network(
              'https://assets8.lottiefiles.com/private_files/lf30_3lflolyo.json',
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                ]),
            height: 150,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    "Ezy Share",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Location: Nayabazar, Kathmandu, Nepal",
                    style: TextStyle(
                        color: Color.fromARGB(255, 106, 103, 103),
                        fontSize: 19),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      ElevatedButton.icon(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.lightBlue),
                        icon: const Icon(Icons.call),
                        label: const Text("Call"),
                        onPressed: () {
                          FlutterPhoneDirectCaller.callNumber("9861859764");
                        },
                      ),
                      const SizedBox(
                        width: 45,
                      ),
                      ElevatedButton.icon(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.lightBlue),
                        icon: const Icon(Icons.mail),
                        label: const Text("Mail"),
                        onPressed: () async {
                          const toEmail = 'venturesshrestha@gmail.com';
                          const subject = 'Feedback';

                          final url =
                              'mailto:$toEmail?subject=${Uri.encodeFull(subject)}}';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                ]),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                ]),
          )
        ],
      ),
    );
  }
}
