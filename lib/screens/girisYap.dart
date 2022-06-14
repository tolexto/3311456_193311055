import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:untitled/services/authentication.dart';

class GirisYap extends StatelessWidget {
  final formKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();
  final appbar = AppBar(
    toolbarHeight: 100,
    backgroundColor: MaterialColor(0xFF3D4949, const <int, Color>{}),
    centerTitle: true,
    title: Text("Cepte Muayene'ye Hoşgeldiniz!",
        style: TextStyle(fontSize: 18, color: Colors.white)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(320),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final ekranboyutu = MediaQuery.of(context).size.height;
    final appbarboyutu = appbar.preferredSize.height;
    return Scaffold(
        backgroundColor: MaterialColor(0xFF3D3C3C, const <int, Color>{}),
        appBar: appbar,
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: SingleChildScrollView(
                child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    textInputAction: TextInputAction.next,
                    controller: _emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-postanızı girin!',
                      labelStyle: TextStyle(fontSize: 18, color: Colors.white),
                      filled: true,
                      fillColor: Color(0xFF282828),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Şifrenizi girin!',
                      labelStyle: TextStyle(fontSize: 18, color: Colors.white),
                      filled: true,
                      fillColor: Color(0xFF282828),
                      counterText: 'Şifrenizi kimseye söylemeyin!',
                      counterStyle:
                          TextStyle(fontSize: 14, color: Colors.white),
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
                      fit: StackFit.loose,
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            height: (ekranboyutu - appbarboyutu) * 0.25,
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
                            fixedSize: Size(300, 120),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 60),
                          ),
                          onPressed: () {
                            _authService
                                .signIn(_emailController.text,
                                    _passwordController.text)
                                .then((value) {
                              return Navigator.pushNamed(context, '/anasayfa');
                            });
                            final snackBar = SnackBar(
                              //TOAST BİLDİRİMİ
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
            ))));
  }
}
