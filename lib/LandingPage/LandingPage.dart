import 'package:flutter/material.dart';
import 'package:flutter_webpage/model_screen/services_screen.dart';


class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "LIN-E \nMarketing e Desenvolvimento",
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
                "Somos uma startup focada em desenvolver as melhores soluções digitais para nossos clientes, criando projetos personalizados para as suas demandas, agregando valor ao seu negócio e gerando resultados melhores.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Services()),
                 );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Nossos Serviços",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(width: 20,),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/site01.png",
          width: width * 0.7,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2, context),
          );
        } 
        else
        return Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "LIN-E \nMarketing e Desenvolvimento",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Somos uma startup focada em desenvolver as melhores soluções digitais para nossos clientes, criando projetos personalizados para as suas demandas, agregando valor ao seu negócio e gerando resultados melhores.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Services()),
                   );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40.0),
                  child: Text(
                    "Nossos Serviços",
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
