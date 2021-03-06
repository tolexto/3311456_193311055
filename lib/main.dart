import 'package:flutter/widgets.dart';
import 'package:untitled/screens/Ayarlar.dart';
import 'package:untitled/screens/Hakkinda.dart';
import 'package:untitled/screens/KBB.dart';
import 'package:untitled/screens/dahiliye.dart';
import 'package:untitled/screens/erkekUroloji.dart';
import 'package:untitled/screens/fullGogus.dart';
import 'package:untitled/screens/fullKafa.dart';
import 'package:untitled/screens/girisYap.dart';
import 'package:untitled/screens/goz.dart';
import 'package:untitled/screens/kadinUro.dart';
import 'package:untitled/screens/kayitOl.dart';
import 'package:untitled/screens/ozelBolge.dart';
import 'package:untitled/screens/renkKorlugu.dart';
import 'package:untitled/widgets/NavBar.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:untitled/screens/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:
  DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/anasayfa': (context) => HomeScreen(),
        '/ayarlar': (context) => Ayars(),
        '/kafa': (context) => fullKafa(),
        '/gogus': (context) => fullGogus(),
        '/hakkinda': (context) => Hakkinda(),
        '/kadin': (context) => kadinUroloji(),
        '/erkek': (context) => erkekUroloji(),
        '/dahiliye': (context) => dahil(),
        '/kulakburunbogaz': (context) => KBB(),
        '/ozelbolge': (context) => ozelBolge(),
        '/girisYap': (context) => GirisYap(),
        '/kayitOl': (context) => KayitOl(),
        '/wellcome': (context) => Wellcome(),
        '/goz': (context) => Goz(),
        '/renkkorlugu': (context) => renkKorlugu(),

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: renk,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: Wellcome(),
    );
  }
}

const MaterialColor arkaplanrenk =
const MaterialColor(0xFF3D4949, const <int, Color>{});

const MaterialColor renk = const MaterialColor(0xFF3DB8A3, const <int, Color>{
  50: const Color(0xFF3D3C3C), //Renk se??mek i??in kulland??????m yer
  100: const Color(0xFF000000), //Renk se??mek i??in kulland??????m yer
  200: const Color(0xFF3DB8A3), //Renk se??mek i??in kulland??????m yer
  300: const Color(0xFF3D4949), //Renk se??mek i??in kulland??????m yer
  400: const Color(0xFF000000), //Renk se??mek i??in kulland??????m yer
  500: const Color(0xFF000000), //Renk se??mek i??in kulland??????m yer
  600: const Color(0xFF000000), //Renk se??mek i??in kulland??????m yer
  700: const Color(0xFF000000), //Renk se??mek i??in kulland??????m yer
  800: const Color(0xFF000000), //Renk se??mek i??in kulland??????m yer
  900: const Color(0xFF000000), //Renk se??mek i??in kulland??????m yer
});

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double kafaBoyut = 90;
  double gogusBoyut = 200;
  double obBoyut = 90;
  double bacakBoyut = 280;
  bool status = false;

  void buyutec() {
    if (kafaBoyut == 120)
      [
        setState(() {
          kafaBoyut += 0;
        })
      ];
    else
      [
        setState(() {
          kafaBoyut += 10;
          gogusBoyut += 17;
          obBoyut += 7.5;
          bacakBoyut += 20;
        })
      ];
    debugPrint("B??y??t??yorum! $kafaBoyut");
  }

  void kucultec() {
    if (kafaBoyut == 60)
      [
        setState(() {
          kafaBoyut -= 0;
        })
      ];
    else
      [
        setState(() {
          kafaBoyut -= 10;
          gogusBoyut -= 17;
          obBoyut -= 7.5;
          bacakBoyut -= 20;
        })
      ];
    debugPrint("K??????lt??yorum! $kafaBoyut");
  }

  void reset() {
    debugPrint("Resetlendi!");
    setState(() {
      kafaBoyut = 90;
      gogusBoyut = 200;
      obBoyut = 90;
      bacakBoyut = 280;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        drawerEdgeDragWidth: 200,
        backgroundColor: arkaplanrenk,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Cepte Muayene",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            new SizedBox(
              height: 18.0,
              width: 35.0,
              child: new IconButton(
                  onPressed: kucultec,
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.zoom_out_rounded),
                  iconSize: 30),
            ),
            new SizedBox(
              height: 18.0,
              width: 30.0,
              child: new IconButton(
                  onPressed: reset,
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.youtube_searched_for_rounded),
                  iconSize: 30),
            ),
            new SizedBox(
              height: 18.0,
              width: 40.0,
              child: new IconButton(
                  onPressed: buyutec,
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.zoom_in_rounded),
                  iconSize: 30),
            ),
          ],
        ),
        body: SafeArea(
            child: Container(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          height: 20, // ??st d??zen bo??lu??u
                        ),
                        Container(
                          height: kafaBoyut,
                          alignment: Alignment.topCenter,
                          child: InkWell(
                            onTap: sorguKafa,
                            child: Image.asset("lib/models/Kafa.png"),
                          ),
                        ),
                        Container(
                          height: gogusBoyut,
                          alignment: Alignment.topCenter,
                          child: InkWell(
                            onTap: sorguGogus,
                            child: Image.asset("lib/models/Karin.png"),
                          ),
                        ),
                        Container(
                          height: obBoyut,
                          alignment: Alignment.topCenter,
                          child: InkWell(
                            onTap: sorguOzelBolge,
                            child: Image.asset("lib/models/Ozel_Bolge.png"),
                          ),
                        ),
                        Container(
                          height: bacakBoyut,
                          alignment: Alignment.topCenter,
                          child: InkWell(
                            onTap: sorguBacak,
                            child: Image.asset("lib/models/Bacak.png"),
                          ),
                        ),
                      ]),
                ))));
  }

  void sorguKafa() {
    Navigator.pushNamed(context, '/kafa');
    debugPrint("Kafaya t??klad??n??z!");
  }

  void sorguGogus() {
    Navigator.pushNamed(context, '/gogus');
    debugPrint("G??????se t??klad??n??z!");
  }

  void sorguOzelBolge() {
    Navigator.pushNamed(context, '/ozelbolge');
    debugPrint("??zel b??lgeye t??klad??n??z!");
  }

  void sorguBacak() {
    debugPrint("Baca??a t??klad??n??z!");
  }

  void sorguGirisYap() {
    Navigator.pushNamed(context, '/girisYap');
    debugPrint("Giri?? Yap'a t??klad??n??z!");
  }
}
