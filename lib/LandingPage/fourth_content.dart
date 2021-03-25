
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webpage/model_screen/services_screen.dart';

class FourthContent extends StatelessWidget {
  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/site04.png",
          width: width * 0.7,
        ),
      ),
      SizedBox(
        width: width * 0.1,
      ),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Estratégia",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Antes de começar a planejar a presença digital de uma empresa, é preciso definir um objetivo, ou seja, o que se espera do marketing digital. Pode ser melhorar a indexação das páginas, aumentar o tráfego para um site, elevar as taxas de conversão, melhorar o relacionamento com o cliente e até estabelecer a empresa no mercado digital. Para cada objetivo, é possível trabalhar estratégias específicas",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: _launchURL,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Fazer um Orçamento",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

// implementar else if
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2, context),
          );
        }  else
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  "Estratégia",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Image.asset(
          "assets/images/site04.png",
          width: constraints.biggest.width * 0.5,
        ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Antes de começar a planejar a presença digital de uma empresa, é preciso definir um objetivo, ou seja, o que se espera do marketing digital. Pode ser melhorar a indexação das páginas, aumentar o tráfego para um site, elevar as taxas de conversão, melhorar o relacionamento com o cliente e até estabelecer a empresa no mercado digital. Para cada objetivo, é possível trabalhar estratégias específicas.",
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: _launchURL,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40.0),
                  child: Text(
                    "Fazer um Orçamento",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
            ),
              ),
              SizedBox(height: 80,)
            ],
          );
          
      },
    );
  }
}


_launchURL() async {
  const url =
      'https://wa.me/message/F7BYG5WNPDOMD1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
