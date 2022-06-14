import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:untitled/services/authentication.dart';

class KayitOl extends StatelessWidget {
  final formKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordagainController = TextEditingController();

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
                  const SizedBox(height: 50),
                  TextFormField(
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        ),
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'İsim',
                      labelStyle: TextStyle(fontSize: 18, color: Colors.white),
                      filled: true,
                      fillColor: Color(0xFF282828),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        ),
                    controller: _surnameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Soyisim',
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.white),
                        filled: true,
                        fillColor: Color(0xFF282828),
                        hintText: 'Büyük harflerle yazın!',
                        hintStyle: TextStyle(
                            fontSize: 25,
                            color: MaterialColor(
                                0xFF494949, const <int, Color>{}))),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
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
                  const SizedBox(height: 20),
                  Divider(),
                  TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    controller: _passwordController,
                    maxLength: 6,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Şifrenizi girin!',
                      labelStyle: TextStyle(fontSize: 18, color: Colors.white),
                      filled: true,
                      fillColor: Color(0xFF282828),
                      isDense: true,
                    ),
                    obscureText: true,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    controller: _passwordagainController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Şifrenizi tekrar girin!',
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
                  const SizedBox(height: 50),
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
                            if (_passwordController.text ==
                                _passwordagainController.text) {
                              _authService
                                  .createUser(
                                      _nameController.text,
                                      _surnameController.text,
                                      _emailController.text,
                                      _passwordController.text,
                                      _passwordagainController.text)
                                  .then((value) {
                                return {
                                  Navigator.pushNamed(context, '/wellcome'),
                                };
                              });
                              final snackBar = SnackBar(
                                //TOAST BİLDİRİMİ
                                content: const Text(
                                  'Kayıt Başarılı!',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                                duration: Duration(milliseconds: 850),
                                backgroundColor: Colors.blueGrey,
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            } else {
                              final snackBar = SnackBar(
                                //TOAST BİLDİRİMİ
                                content: const Text(
                                  'Kayıt Başarısız!',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                                duration: Duration(milliseconds: 850),
                                backgroundColor: Colors.blueGrey,
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          child: const Text('Kayıt Ol!'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))));
  }
}
