import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_webpage/LandingPage/LandingPage.dart';
import 'package:flutter_webpage/LandingPage/fourth_content.dart';
import 'package:flutter_webpage/LandingPage/second_content.dart';
import 'package:flutter_webpage/LandingPage/third_content.dart';
import 'package:flutter_webpage/Navbar/Navbar.dart';
import 'package:flutter_webpage/baseboard/baseboard.dart';
import 'package:url_launcher/url_launcher.dart';

class Base extends StatelessWidget {
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
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: SecondContent(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: ThirdContent(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: FourthContent(),
              ),
              
              BaseBoard(),
            ],
          ),
        ),
      ),
    );
  }
}


_launchURL() async {
  const url =
      'https://api.whatsapp.com/send?phone=5531992771336&text=Oi,%20gostaria%20de%20fazer%20um%20or%C3%A7amento';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

