import 'package:flutter/material.dart';
import 'package:messiah_app/themes/app_color.dart';

class DonarConatinerBlood extends StatelessWidget {
  final String name;
  final String bloodGroup;
  final String location;
  final String phoneNumber;
  final String email;

  DonarConatinerBlood(
      {this.name,
      this.bloodGroup,
      this.location,
      this.phoneNumber,
      this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.bodyColorDark,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 60,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                name ?? 'Example Name',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(bloodGroup ?? '**',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Text(location ?? 'Example Place'),
              Text(phoneNumber ?? '98XXXXXXXXXXXX'),
              Text(email ?? 'vuXXXXXXXXX@gmail.com'),
            ],
          )
        ],
      ),
    );
  }
}
