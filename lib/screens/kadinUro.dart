import 'package:flutter/material.dart';
import '../widgets/NavBar.dart';

class kadinUroloji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("Göğüse tıkladınız!");

    return Scaffold(
        drawer: NavBar(),
        drawerEdgeDragWidth: 200,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Kadın",
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
                onTap: () => print("Vajinaya Tıkladınız!"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('lib/models/18.png',
                          height: MediaQuery.of(context).size.aspectRatio * 250,
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      title: Text(
                        'Vajina',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        '',
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
                onTap: () => print("Yumurtaya Tıkladınız!"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('lib/models/18.png',
                          height: MediaQuery.of(context).size.aspectRatio * 250,
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      title: Text(
                        'Yumurta',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        '',
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
                onTap: () => print("İdrar Kesesine Tıkladınız!"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('lib/models/ik.png',
                          height: MediaQuery.of(context).size.aspectRatio * 250,
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      title: Text(
                        'İdrar',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        'kesesi',
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
