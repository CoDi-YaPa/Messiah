import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messiah_app/Models/dataModel.dart';
import 'package:messiah_app/themes/app_color.dart';


class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  double xOffset = 0.0;
  double yOffset = 0.0;
  double scaleFactor = 1.0;
  double borderRadius = 1.0;
  bool isDrawerOpen = false;


  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }





  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        color:AppColor.textFieldColorDark ,
      ),
      duration: Duration(milliseconds: 300),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                isDrawerOpen
                    ? IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          setState(() {
                            xOffset = 0.0;
                            yOffset = 0.0;
                            scaleFactor = 1.0;
                            borderRadius = 1.0;
                            isDrawerOpen = false;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: 30,
                          color: AppColor.textColorDark,
                        ),
                        onPressed: () {
                          setState(() {
                            xOffset = 250.0;
                            yOffset = 150.0;
                            scaleFactor = 0.6;
                            borderRadius = 25;
                            isDrawerOpen = true;
                          });
                        },
                      ),
                Center(
                  child: Text(
                    "Messiah",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: AppColor.textColorDark),
                  ),
                ),
                _widgetOptions.elementAt(_selectedIndex),
                SizedBox(
                  width: 30,
                )

              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: newsImages.length,
                itemBuilder: (context, int index) {
                  return Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(newsImages[index]),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                AutoSizeText(
                                  newsTitle[index],
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                                AutoSizeText(
                                  newsDetail[index],
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      )
                    ],

                  );
                },
              ),
            ),
            BottomNavigationBar(

              items:const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.drop_fill),
                label: 'Blood',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.drop_triangle),
                label: 'Plasma',
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bed_double_fill),
                label: 'Oxygen',
                backgroundColor: Colors.purple,
              ),

            ],
              currentIndex: _selectedIndex,
              selectedItemColor: AppColor.buttonBackgroundColorDark,
              onTap: _onItemTapped,
            backgroundColor:AppColor.textFieldColorDark ,
            elevation: 0,)

          ],
        ),
      ),
    );
  }
}
