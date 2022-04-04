import 'package:flutter/material.dart';
import 'KBB.dart';
import 'package:untitled/widgets/NavBar.dart';

class fullKafa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      debugPrint("Göğüse tıkladınız!");
    return Scaffold(
        drawer: NavBar(),
        drawerEdgeDragWidth: 200,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Baş Bölgesi",
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
                onTap: () => print("Beyine Tıkladınız!"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('lib/models/beyin.png',
                          height: MediaQuery.of(context).size.aspectRatio * 250,
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      title: Text(
                        'Nöroloji',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        'polikinliği',
                        textScaleFactor: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("Göze Tıkladınız!"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('lib/models/goz.png',
                          height: MediaQuery.of(context).size.aspectRatio * 250,
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      title: Text(
                        'Göz',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        'polikinliği',
                        textScaleFactor: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/kulakburunbogaz'),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('lib/models/KBB.png',
                          height: MediaQuery.of(context).size.aspectRatio * 250,
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      title: Text(
                        'KBB',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        'Polikinliği',
                        textScaleFactor: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("Ağıza Tıkladınız!"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('lib/models/agiz.png',
                          height: MediaQuery.of(context).size.aspectRatio * 250,
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      title: Text(
                        'Ağız ve Diş Sağlığı',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        'polikinliği',
                        textScaleFactor: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]))));
  }
}
