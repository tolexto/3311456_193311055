import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class GirisYap extends StatelessWidget {
  final formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 240,
          backgroundColor: MaterialColor(0xFF3D4949, const <int, Color>{}),
          centerTitle: true,
          title: Text("Cepte Muayene'ye Hoşgeldiniz!",
              style: TextStyle(fontSize: 30, color: Colors.white)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(320),
            ),
          ),
        ),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-postanızı girin!',
                      labelStyle: TextStyle(fontSize: 18),
                      filled: true,
                      fillColor: Color(0xFF282828),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Şifrenizi girin!',
                      labelStyle: TextStyle(fontSize: 18),
                      filled: true,
                      fillColor: Color(0xFF282828),
                      counterText: 'Şifrenizi kimseye söylemeyin!',
                      isDense: true,
                    ),
                    obscureText: true,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(" ",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  Text(" ",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
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
                            padding: const EdgeInsets.all(15.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 75),
                          ),
                          onPressed: () {
                            final snackBar = SnackBar( //TOAST BİLDİRİMİ
                              content: const Text(
                                'Giriş Başarılı!',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              duration: Duration(milliseconds: 850),
                              backgroundColor: Colors.blueGrey,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: const Text('Giriş Yap!'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
