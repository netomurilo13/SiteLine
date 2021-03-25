import 'package:flutter/material.dart';
import 'package:flutter_webpage/LandingPage/base.dart';
import 'package:flutter_webpage/model_screen/about_us_screen.dart';
import 'package:flutter_webpage/model_screen/screens/about_us_screen_final.dart';
import 'package:flutter_webpage/model_screen/services_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class BaseBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopBaseBoard();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopBaseBoard();
        } else {
          return MobileBaseBoard();
        }
      },
    );
  }
}

class DesktopBaseBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(5, 5, 8, 1.0),
              Color.fromRGBO(5, 5, 8, 1.0),
              // Color.fromRGBO(36, 11, 54, 1.0)
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [

                  MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Base()),
                  );
                },
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 70,
                ),
              ),

                  Text(
                          "Marketing Digital",
                          style: TextStyle(color: Colors.purple),
                        ),
                ],
              ),
            ),     
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Redes sociais",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         
                          MaterialButton(
                            onPressed: _launchURL2,
                            child: Image.asset(
                              "assets/images/wpp.png",
                              height: 40,
                            ),
                          ),
                          MaterialButton(
                            onPressed: _launchURL,
                            child: Image.asset(
                              "assets/images/insta.png",
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
        ),
      ),
    );
  }
}

class MobileBaseBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(5, 5, 8, 1.0),
              Color.fromRGBO(5, 5, 8, 1.0),
              //Color.fromRGBO(36, 11, 54, 1.0)
            ]),
      ),
      child: Column(children: <Widget>[
        Image.asset(
          "assets/images/logo.png",
          height: 50,
        ),
        Text(
          "Redes sociais",
          style: TextStyle(color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: _launchURL2,
                child: Image.asset(
                  "assets/images/wpp.png",
                  height: 20,
                ),
              ),
              
              MaterialButton(
                onPressed: _launchURL,
                child: Image.asset(
                  "assets/images/insta.png",
                  height: 20,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

_launchURL() async {
  const url = 'https://www.instagram.com/lin_e.mkt';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url =
      'https://wa.me/message/F7BYG5WNPDOMD1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
