import 'package:flutter/material.dart';
import 'package:untitled/screens/erkekUroloji.dart';
import 'package:untitled/screens/kadinUro.dart';
import 'package:untitled/widgets/NavBar.dart';

class ozelBolge extends StatefulWidget {
  @override
  _ozelBolgeState createState() => _ozelBolgeState();
}

class _ozelBolgeState extends State<ozelBolge> {
/**/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        drawerEdgeDragWidth: 200,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Üroloji",
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
                onTap: () => Navigator.pushNamed(context, '/kadin'),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('lib/models/kadinAnatomi.png',
                          height: MediaQuery.of(context).size.aspectRatio * 250,
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      title: Text(
                        'Kadın',
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
                onTap: () => Navigator.pushNamed(context, '/erkek'),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('lib/models/erkekAnatomi.png',
                          height: MediaQuery.of(context).size.aspectRatio * 250,
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      title: Text(
                        'Erkek',
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
        ]))));
  }
}
