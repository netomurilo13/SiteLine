import 'package:flutter/material.dart';
import 'package:flutter_webpage/LandingPage/LandingPage.dart';
import 'package:flutter_webpage/LandingPage/fourth_content.dart';
import 'package:flutter_webpage/LandingPage/second_content.dart';
import 'package:flutter_webpage/LandingPage/third_content.dart';
import 'package:flutter_webpage/Navbar/Navbar.dart';
import 'package:flutter_webpage/baseboard/baseboard.dart';
import 'package:flutter_webpage/model_screen/screens/services2_screnn_final.dart';
import 'package:flutter_webpage/model_screen/screens/services_screen_final.dart';





class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: ServicesPage(),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: ServicesSecondPage(),
              ),
              SizedBox(height: 50,),
              
              BaseBoard(),
            ],
          ),
        ),
      ),
    );
  }
}

