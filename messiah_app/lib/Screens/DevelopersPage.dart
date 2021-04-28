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
                      ),
                      Text('Soumik Mukherjee'),
                      Text("Soumik's LinkedIn Profile"),
                      Text("Soumik's GitHub Profile"),
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
                      ),
                      Text('Ritik Shah'),
                      Text("Ritik's LinkedIn Profile"),
                      Text("Ritik's GitHub Profile"),
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
                      ),
                      Text('Jyotirmoy Bandopadhyay'),
                      Text("Jyotirmoy's LinkedIn Profile"),
                      Text("Jyotirmoy's GitHub Profile"),
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
