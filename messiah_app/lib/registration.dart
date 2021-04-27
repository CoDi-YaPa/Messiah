import 'package:flutter/material.dart';
import 'themes/app_color.dart';
import 'themes/app_theme.dart';

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double fontScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                width: size.width,
                height: size.height,
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: size.height * 0.14,
                    bottom: size.height * 0.06),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hey , \nNew User",
                          style: Theme.of(context).textTheme.headline1.copyWith(
                                fontSize: size.width * 0.1,
                              )),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFF1D2740),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Name",
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFF1D2740),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "E-mail",
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFF1D2740),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Phone Number",
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFF1D2740),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Column(children: [
                              MaterialButton(
                                onPressed: () => {},
                                elevation: 100,
                                padding: EdgeInsets.all(18),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Color(0xFF3172F5),
                                child: Center(
                                    child: Text(
                                  "Sign up",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                            ])
                          ]),
                    ]))));
  }
}
