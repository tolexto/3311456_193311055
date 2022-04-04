import 'package:flutter/widgets.dart';
import '../widgets/NavBar.dart';
import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        drawerEdgeDragWidth: 200,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hakkında",
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.33,
                alignment: Alignment.center,
                margin: EdgeInsets.zero,
                child: Text(
                    'Bu proje,\n Selçuk Üniversitesi Bilgisayar Mühendisliği Bölümü\n DR. ÖĞR. ÜYESİ AHMET CEVAHİR ÇINAR için\n Mobil Programlama dersi ödevi olarak 193311055 numaraları öğrenci Tuna MEYDAN tarafından hazırlanmıştır.\n\n© 2022 Cepte Muayene',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18, shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 5.0,),
                        blurRadius: 5,
                        color: Color.fromARGB(90, 0, 0, 0),
                      ),
                    ])))
          ],
        ))));
  }
}
