import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Wellcome extends StatelessWidget {
  final appbar = AppBar(
    toolbarHeight: 100,
    backgroundColor: MaterialColor(0xFF3D4949, const <int, Color>{}),
    centerTitle: true,
    title: Text("Cepte Muayene'ye Hoşgeldiniz!",
        style: TextStyle(fontSize: 22, color: Colors.white)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(320),
      ),
    ),
  );

  final formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MaterialColor(0xFF3D3C3C, const <int, Color>{}),
        appBar: appbar,
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFF3D4949),
                                  Color(0xFF3DB8A3),
                                  Color(0xFF3D4949),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size(300, 120),
                            padding: const EdgeInsets.all(15.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 60),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/girisYap'),
                          child: const Text('Giriş Yap!'),
                        ),
                      ],
                    ),
                  ),
                  Text(" ",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  Text("veya",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                  Text(" ",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFF3D4949),
                                  Color(0xFF3DB8A3),
                                  Color(0xFF3D4949),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size(300, 120),
                            padding: const EdgeInsets.all(15.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 60),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/kayitOl'),
                          child: const Text('Kaydol!'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
