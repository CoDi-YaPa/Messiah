import 'package:flutter/material.dart';
import 'package:messiah_app/CustomWidgets/Nav_items.dart';
import 'package:messiah_app/themes/app_color.dart';

class BackPage extends StatefulWidget {
  @override
  _BackPageState createState() => _BackPageState();
}

class _BackPageState extends State<BackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bodyColorDark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.android,
                  color: Colors.white,
                  size: 40,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.55,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.buttonBackgroundColorDark,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: MenuItem(
                    iconData: Icons.home,
                    menuItem: "Home",
                  ),
                ),
                MenuItem(
                  iconData: Icons.person,
                  menuItem: "Profile",
                ),
                MenuItem(
                  iconData: Icons.history,
                  menuItem: "History",
                ),
                MenuItem(
                  iconData: Icons.mode_edit,
                  menuItem: "Author",
                ),
                MenuItem(
                  iconData: Icons.notifications,
                  menuItem: "Notifications",
                ),
                MenuItem(
                  iconData: Icons.settings,
                  menuItem: "Settings",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width * 0.6,
            child: MenuItem(
              iconData: Icons.power_settings_new,
              menuItem: "Logout",
            ),
          ),
        ],
      ),
    );
  }
}
