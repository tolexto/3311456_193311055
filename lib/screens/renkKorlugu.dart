import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/NavBar.dart';

class renkKorlugu extends StatefulWidget {
  @override
  _renkKorluguState createState() => _renkKorluguState();
}

class _renkKorluguState extends State<renkKorlugu> {
  int _value1 = 0;
  int _value2 = 0;
  int _value3 = 0;
  int _value4 = 0;
  int _value5 = 0;
  int _value6 = 0;
  int _value7 = 0;
  int key = 0;
  int kirmiziyesil = 0;
  int normal = 0;
  int tumrenkkoru = 0;
  int mavirenkkoru = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        drawerEdgeDragWidth: 200,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Renk Körlüğü Testi",
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("Renk Körlüğüne Tıkladınız!"),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('lib/models/1.png',
                            height:
                                MediaQuery.of(context).size.aspectRatio * 350,
                            fit: BoxFit.fitHeight),
                      ),
                      ListTile(
                        title: Text(
                          'Ne Görüyorsun?',
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.8,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("5 görüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 1,
                      groupValue: _value1,
                      onChanged: (value) {
                        setState(() {
                          _value1 = 1;
                          kirmiziyesil = 0;
                          normal += 1;
                          tumrenkkoru = 0;
                        });
                      }),
                  Text("2 görüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 2,
                      groupValue: _value1,
                      onChanged: (value) {
                        setState(() {
                          _value1 = 2;
                          kirmiziyesil += 1;
                          normal += 0;
                          tumrenkkoru += 0;
                        });
                      }),
                  Text("Hiçbir şey görmüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 3,
                      groupValue: _value1,
                      onChanged: (value) {
                        setState(() {
                          _value1 = 3;
                          kirmiziyesil += 0;
                          normal += 0;
                          tumrenkkoru += 1;
                        });
                      }),
                ]),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("Renk Körlüğüne Tıkladınız!"),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('lib/models/2.png',
                            height:
                                MediaQuery.of(context).size.aspectRatio * 350,
                            fit: BoxFit.fitHeight),
                      ),
                      ListTile(
                        title: Text(
                          'Ne Görüyorsun?',
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.8,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            child: Column(children: <Widget>[
              Text("5 görüyorum",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 25)),
              Radio(
                  value: 1,
                  groupValue: _value2,
                  onChanged: (value) {
                    setState(() {
                      _value2 = 1;
                      kirmiziyesil += 1;
                      normal += 0;
                      tumrenkkoru += 0;
                    });
                  }),
              Text("Hiçbir şey görmüyorum",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 25)),
              Radio(
                  value: 2,
                  groupValue: _value2,
                  onChanged: (value) {
                    setState(() {
                      _value2 = 2;
                      kirmiziyesil += 0;
                      normal += 1;
                      tumrenkkoru += 0;
                    });
                  }),
            ]),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("Renk Körlüğüne Tıkladınız!"),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('lib/models/3.png',
                            height:
                                MediaQuery.of(context).size.aspectRatio * 350,
                            fit: BoxFit.fitHeight),
                      ),
                      ListTile(
                        title: Text(
                          'Ne Görüyorsun?',
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.8,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Hiçbir şey görmüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 1,
                      groupValue: _value3,
                      onChanged: (value) {
                        setState(() {
                          _value3 = 1;
                          kirmiziyesil += 0;
                          normal += 0;
                          tumrenkkoru += 1;
                        });
                      }),
                  Text("5 görüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 2,
                      groupValue: _value3,
                      onChanged: (value) {
                        setState(() {
                          _value3 = 2;
                          kirmiziyesil += 1;
                          normal += 0;
                          tumrenkkoru += 0;
                        });
                      }),
                  Text("3 görüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 3,
                      groupValue: _value3,
                      onChanged: (value) {
                        setState(() {
                          _value3 = 3;
                          kirmiziyesil += 0;
                          normal += 1;
                          tumrenkkoru += 0;
                        });
                      }),
                ]),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("Renk Körlüğüne Tıkladınız!"),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('lib/models/4.png',
                            height:
                                MediaQuery.of(context).size.aspectRatio * 350,
                            fit: BoxFit.fitHeight),
                      ),
                      ListTile(
                        title: Text(
                          'Ne Görüyorsun?',
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.8,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("45 görüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 1,
                      groupValue: _value4,
                      onChanged: (value) {
                        setState(() {
                          _value4 = 1;
                          kirmiziyesil += 1;
                          normal += 0;
                          tumrenkkoru += 0;
                        });
                      }),
                  Text("Hiçbir şey görmüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 2,
                      groupValue: _value4,
                      onChanged: (value) {
                        setState(() {
                          _value4 = 2;
                          kirmiziyesil += 0;
                          normal += 1;
                          tumrenkkoru += 0;
                        });
                      }),
                ]),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("Renk Körlüğüne Tıkladınız!"),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('lib/models/5.png',
                            height:
                                MediaQuery.of(context).size.aspectRatio * 350,
                            fit: BoxFit.fitHeight),
                      ),
                      ListTile(
                        title: Text(
                          'Ne Görüyorsun?',
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.8,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("5 görüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 1,
                      groupValue: _value5,
                      onChanged: (value) {
                        setState(() {
                          _value5 = 1;
                          kirmiziyesil += 0;
                          normal += 1;
                          tumrenkkoru += 0;
                        });
                      }),
                  Text("Hiçbir şey görmüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 2,
                      groupValue: _value5,
                      onChanged: (value) {
                        setState(() {
                          _value5 = 2;
                          kirmiziyesil += 1;
                          normal += 0;
                          tumrenkkoru += 1;
                        });
                      }),
                ]),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("Renk Körlüğüne Tıkladınız!"),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('lib/models/6.png',
                            height:
                                MediaQuery.of(context).size.aspectRatio * 350,
                            fit: BoxFit.fitHeight),
                      ),
                      ListTile(
                        title: Text(
                          'Ne Görüyorsun?',
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.8,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Hiçbir şey görmüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 1,
                      groupValue: _value6,
                      onChanged: (value) {
                        setState(() {
                          _value6 = 1;
                          kirmiziyesil += 1;
                          normal += 0;
                          tumrenkkoru += 1;
                        });
                      }),
                  Text("7 görüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 2,
                      groupValue: _value6,
                      onChanged: (value) {
                        setState(() {
                          _value6 = 2;
                          kirmiziyesil += 0;
                          normal += 1;
                          tumrenkkoru += 0;
                        });
                      }),
                ]),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("Renk Körlüğüne Tıkladınız!"),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('lib/models/7.png',
                            height:
                                MediaQuery.of(context).size.aspectRatio * 350,
                            fit: BoxFit.fitHeight),
                      ),
                      ListTile(
                        title: Text(
                          'Ne Görüyorsun?',
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.8,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Hiçbir şey görmüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 1,
                      groupValue: _value7,
                      onChanged: (value) {
                        setState(() {
                          _value7 = 1;
                          mavirenkkoru += 10;
                          tumrenkkoru += 7;
                        });
                      }),
                  Text("Üçgen görüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 2,
                      groupValue: _value7,
                      onChanged: (value) {
                        setState(() {
                          _value7 = 2;
                          mavirenkkoru += 10;
                          tumrenkkoru +=5;
                        });
                      }),
                  Text("Yuvarlak görüyorum",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                  Radio(
                      value: 3,
                      groupValue: _value7,
                      onChanged: (value) {
                        setState(() {
                          _value7 = 3;
                          normal += 1;
                        });
                      }),
                ]),
          ),
          Divider(height: 30),
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
                    textStyle: const TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    if (_value1 != 0 ||
                        _value2 != 0 ||
                        _value3 != 0 ||
                        _value4 != 0 ||
                        _value5 != 0 ||
                        _value6 != 0 ||
                        _value7 != 0) {
                      print(mavirenkkoru);
                      print(tumrenkkoru);
                      print(normal);
                      print(kirmiziyesil);

                      if (normal >= kirmiziyesil &&
                          normal >= tumrenkkoru &&
                          normal >= mavirenkkoru) {
                        kirmiziyesil = 0;
                        normal = 0;
                        tumrenkkoru = 0;
                        mavirenkkoru = 0;
                        _value1 = 0;
                        _value2 = 0;
                        _value3 = 0;
                        _value4 = 0;
                        _value5 = 0;
                        _value6 = 0;
                        _value7 = 0;
                        final snackBar = SnackBar(
                          //TOAST BİLDİRİMİ
                          content: const Text(
                            'Hesaplama başarılı! Normalsiniz',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          duration: Duration(milliseconds: 850),
                          backgroundColor: Colors.blueGrey,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else if (mavirenkkoru >= normal &&
                          mavirenkkoru >= kirmiziyesil &&
                          mavirenkkoru >= tumrenkkoru) {
                        kirmiziyesil = 0;
                        normal = 0;
                        tumrenkkoru = 0;
                        mavirenkkoru = 0;
                        _value1 = 0;
                        _value2 = 0;
                        _value3 = 0;
                        _value4 = 0;
                        _value5 = 0;
                        _value6 = 0;
                        _value7 = 0;
                        final snackBar = SnackBar(
                          //TOAST BİLDİRİMİ
                          content: const Text(
                            'Hesaplama başarılı! Mavi Renk Körüsünüz',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          duration: Duration(milliseconds: 850),
                          backgroundColor: Colors.blueGrey,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else if (tumrenkkoru >= normal &&
                          tumrenkkoru >= kirmiziyesil &&
                          tumrenkkoru >= mavirenkkoru) {
                        kirmiziyesil = 0;
                        normal = 0;
                        tumrenkkoru = 0;
                        mavirenkkoru = 0;
                        _value1 = 0;
                        _value2 = 0;
                        _value3 = 0;
                        _value4 = 0;
                        _value5 = 0;
                        _value6 = 0;
                        _value7 = 0;
                        final snackBar = SnackBar(
                          //TOAST BİLDİRİMİ
                          content: const Text(
                            'Hesaplama başarılı! Tüm Renk Körüsünüz',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          duration: Duration(milliseconds: 850),
                          backgroundColor: Colors.blueGrey,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else if (kirmiziyesil >= normal &&
                          kirmiziyesil >= mavirenkkoru &&
                          kirmiziyesil >= tumrenkkoru) {
                        kirmiziyesil = 0;
                        normal = 0;
                        tumrenkkoru = 0;
                        mavirenkkoru = 0;
                        _value1 = 0;
                        _value2 = 0;
                        _value3 = 0;
                        _value4 = 0;
                        _value5 = 0;
                        _value6 = 0;
                        _value7 = 0;
                        final snackBar = SnackBar(
                          //TOAST BİLDİRİMİ
                          content: const Text(
                            'Hesaplama başarılı! Kırmızı Yeşil Renk Körüsünüz',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          duration: Duration(milliseconds: 850),
                          backgroundColor: Colors.blueGrey,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    } else
                      print("Else'e girdim");
                    print("mavi renk körü: $mavirenkkoru");
                    print("tüm renk körü: $tumrenkkoru");
                    print("normal: $normal");
                    print("kirmizi yeşil: $kirmiziyesil");
                    {
                      kirmiziyesil = 0;
                      normal = 0;
                      tumrenkkoru = 0;
                      mavirenkkoru = 0;
                      _value1 = 0;
                      _value2 = 0;
                      _value3 = 0;
                      _value4 = 0;
                      _value5 = 0;
                      _value6 = 0;
                      _value7 = 0;
                      final snackBar = SnackBar(
                        //TOAST BİLDİRİMİ
                        content: const Text(
                          'Tüm soruları işaretleyin!',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        duration: Duration(milliseconds: 850),
                        backgroundColor: Colors.blueGrey,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Text('Hesapla!', textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ]))));
  }
}
