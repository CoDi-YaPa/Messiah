import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'BackPage.dart';
import 'package:messiah_app/themes/app_color.dart';
import 'package:messiah_app/themes/app_theme.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D2740),
        title: Text("USER'S PROFILE"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  radius: 75.0,
                  backgroundImage: AssetImage('images/contacts.png'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Card(
                  margin: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
                  child: ListTile(
                    tileColor: Color(0xFF1D2740),
                    leading: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue[300],
                      ),
                    ),
                    trailing: Text(
                      'Soumik Mukherjee',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
                  child: ListTile(
                    tileColor: Color(0xFF1D2740),
                    leading: Text(
                      'Phone No.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue[300],
                      ),
                    ),
                    trailing: Text(
                      '700XXXXXXX',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
                  child: ListTile(
                    tileColor: Color(0xFF1D2740),
                    leading: Text(
                      'Address',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue[300],
                      ),
                    ),
                    trailing: Text(
                      'Kolkata, West Bengal',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
                  child: ListTile(
                    tileColor: Color(0xFF1D2740),
                    leading: Text(
                      'Blood Group',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue[300],
                      ),
                    ),
                    trailing: Text(
                      'A(-)',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
