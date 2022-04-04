import 'package:flutter/material.dart';
import '../widgets/NavBar.dart';

class AyarlarEkran extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  const AyarlarEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Ayars(),
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: renk,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            themeMode: currentMode,
          );
        });
  }
}

const MaterialColor renk = const MaterialColor(0xFF3DB8A3, const <int, Color>{
  50: const Color(0xFF000000), //Renk seçmek için kullandığım yer
  100: const Color(0xFF000000), //Renk seçmek için kullandığım yer
  200: const Color(0xFF000000), //Renk seçmek için kullandığım yer
  300: const Color(0xFF000000), //Renk seçmek için kullandığım yer
  400: const Color(0xFF000000), //Renk seçmek için kullandığım yer
  500: const Color(0xFF000000), //Renk seçmek için kullandığım yer
  600: const Color(0xFF000000), //Renk seçmek için kullandığım yer
  700: const Color(0xFF000000), //Renk seçmek için kullandığım yer
  800: const Color(0xFF000000), //Renk seçmek için kullandığım yer
  900: const Color(0xFF000000), //Renk seçmek için kullandığım yer
});

class Ayars extends StatefulWidget {
  @override
  _AyarsState createState() => _AyarsState();
}

class _AyarsState extends State<Ayars> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      drawerEdgeDragWidth: 200,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ayarlar",
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              spacing: Checkbox.width,
              runSpacing: 0.0,
              children: <Widget>[
                Container(
                    child: Text('Karanlık Mod',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                        ))),
                Container(
                    child: Text('-',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                        ))),
                Container(
                    child: IconButton(
                  onPressed: () {
                    AyarlarEkran.themeNotifier.value =
                        AyarlarEkran.themeNotifier.value == ThemeMode.light
                            ? ThemeMode.dark
                            : ThemeMode.light;
                  },
                  icon: Icon(AyarlarEkran.themeNotifier.value == ThemeMode.light
                      ? Icons.dark_mode
                      : Icons.light_mode),
                )),
              ]),
        ),
      ),
    );
  }
}
