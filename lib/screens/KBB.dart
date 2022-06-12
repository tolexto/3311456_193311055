import 'package:flutter/material.dart';
import 'package:untitled/widgets/NavBar.dart';

class KBB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                        onTap: () => print("Kulağa Tıkladınız!"),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              child: Image.asset('lib/models/kulak.png',
                                  height: MediaQuery.of(context).size.aspectRatio * 250,
                                  fit: BoxFit.fitHeight),
                            ),
                            ListTile(
                              title: Text(
                                'Kulak',
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
                        onTap: () => print("Burna Tıkladınız!"),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              child: Image.asset('lib/models/burun.png',
                                  height: MediaQuery.of(context).size.aspectRatio * 250,
                                  fit: BoxFit.fitHeight),
                            ),
                            ListTile(
                              title: Text(
                                'Burun',
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
                        onTap: () => print("Boyuna Tıkladınız!"),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              child: Image.asset('lib/models/boyun.png',
                                  height: MediaQuery.of(context).size.aspectRatio * 250,
                                  fit: BoxFit.fitHeight),
                            ),
                            ListTile(
                              title: Text(
                                'Boğaz',
                                textScaleFactor: 1.5,
                              ),
                              subtitle: Text(
                                '0',
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
