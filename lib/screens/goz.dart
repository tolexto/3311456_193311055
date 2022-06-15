import 'package:flutter/material.dart';
import 'package:untitled/widgets/NavBar.dart';

class Goz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        drawerEdgeDragWidth: 200,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Göz Polikinliği",
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
                onTap: () => Navigator.pushNamed(context, '/renkkorlugu'),
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
                        'Renk Körlüğü',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        'testi',
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
