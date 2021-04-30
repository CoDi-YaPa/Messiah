import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_intro_slider/homePage.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:messiah_app/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroSliderPage extends StatefulWidget {
  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
          title: "...Blood...",
          description:
              "Now you have an awesome platform to look for blood donors around you. You can voluntarily become a donor and register yourself here!",
          pathImage: "images/blood.png"),
    );
    slides.add(
      new Slide(
          title: "...Plasma...",
          description:
              "We all know how important this plasma becomes when he/she is in the final stages of NCov-19 or any other chronic illnesses. So, similar to getting a blood donor, you can also look for a plasma donor here!",
          pathImage: "images/plasma.png"),
    );
    slides.add(
      new Slide(
          title: "...Oxygen...",
          description:
              "In the recent scenario of the Covid-19 pandemic, getting oxygen cylinders timely is another major concern. There are certain agents/suppliers about whom the common people are unaware of and they remain deprived of the oxygen cylinders. So here we are with yet another solution!",
          pathImage: "images/oxygen.png"),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 160, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      //color: Colors.white,
                      ),
                  child: Image.asset(
                    currentSlide.pathImage,
                    matchTextDirection: true,
                    height: 250.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Text(
                    currentSlide.title,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                    currentSlide.description,
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, height: 1.5),
                    maxLines: 9,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Color(0xFF0B1328),
      renderSkipBtn: Text(
        "Skip",
        style: TextStyle(color: Colors.white),
      ),
      renderNextBtn: Text(
        "Next",
        style: TextStyle(color: Colors.white),
      ),
      renderDoneBtn: Text(
        "Done",
        style: TextStyle(color: Colors.white),
      ),
      colorDoneBtn: Colors.blue,
      colorActiveDot: Colors.white,
      colorDot: Colors.white30,
      sizeDot: 10.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: this.renderListCustomTabs(),
      scrollPhysics: BouncingScrollPhysics(),
      hideStatusBar: false,
      onDonePress: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => LoginPage(),
        ),
      ),
    );
  }
}
