import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'BackPage.dart';
import 'package:messiah_app/themes/app_color.dart';
import 'package:messiah_app/themes/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DevelopersPage extends StatefulWidget {
  @override
  _DevelopersPageState createState() => _DevelopersPageState();
}

class _DevelopersPageState extends State<DevelopersPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double fontScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D2740),
        centerTitle: true,
        title: Text("Developer's Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/sm.jpg'),
                        radius: 65.0,
                      ),
                      Text(
                        'Soumik Mukherjee',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Soumik's LinkedIn Profile",
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url =
                                      "https://www.linkedin.com/in/soumik-mukherjee-438b451b5/";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw "Failed to open LinkedIn";
                                  }
                                })
                        ]),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Soumik's GitHub Profile",
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url = "https://github.com/Procoder16";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw "Failed to open GitHub";
                                  }
                                })
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/rs.jpg'),
                        radius: 65.0,
                      ),
                      Text(
                        'Ritik Shah',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Ritik's LinkedIn Profile",
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url =
                                      "https://www.linkedin.com/in/ritik-shah-73148a210/";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw "Failed to open LinkedIn";
                                  }
                                })
                        ]),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Ritik's GitHub Profile",
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url = "https://github.com/ritik-1302";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw "Failed to open GitHub";
                                  }
                                })
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/jb.jpg'),
                        radius: 65.0,
                      ),
                      Text(
                        'Jyotirmoy Bandopadhyay',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Jyotirmoy's LinkedIn Profile",
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url =
                                      "https://www.linkedin.com/in/bravo68web/";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw "Failed to open LinkedIn";
                                  }
                                })
                        ]),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Jyotirmoy's GitHub Profile",
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url = "https://github.com/BRAVO68WEB";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw "Failed to open GitHub";
                                  }
                                })
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
