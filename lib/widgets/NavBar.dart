import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('failed:$e');
    }
  }

  Future pickFoto() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final fotoTemp = File(image.path);

      setState(() => this.image = fotoTemp);
    } on PlatformException catch (e) {
      print('failed:$e');
    }
    image != image
        ? Image.file(image!)
        : Image.asset('assets/fotoyok.png', fit: BoxFit.fill);
  }

  @override
  Widget build(BuildContext context) {
    void cikisSorgu() {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('ÇIKIŞ!'),
          content: const Text('Çıkmak istediğinize emin misiniz?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'İptal'),
              child: const Text('İptal'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, exit(0)),
              child: const Text('Evet, eminim!'),
            ),
          ],
        ),
      );
    }

    void profilFotograf() {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Fotoğraf Seçin'),
          content: const Text('Kamera mı açılsın, galeriden mi seçersiniz'),
          actions: <Widget>[
            TextButton(
              onPressed: () => pickImage(),
              child: const Text('Galeriden Seçin!'),
            ),
            TextButton(
                onPressed: () => pickFoto(),
                child: const Text('Kamera ile Çekin')),
          ],
        ),
      );
    }

    String isim = ("Tuna");
    int yas = (21);

    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Hoşgeldiniz! $isim B.',
                style: TextStyle(color: Color(0xFFFFFFFF))),
            accountEmail: Text('Yaşınız: $yas',
                style: TextStyle(color: Color(0xFFFFFFFF))),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: InkWell(
                    onTap: () => profilFotograf(),
                    child: image != null
                        ? Image.file(image!)
                        : Image.asset('lib/models/fotoyok.png', fit: BoxFit.fill)),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF3DB8A3),
              image: DecorationImage(
                image: AssetImage('lib/models/BackGround.jpg'),
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.apartment),
            title: Text('Anasayfa'),
            onTap: () => Navigator.pushNamed(context, '/anasayfa'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Ailem'),
            onTap: () => null,
          ),
          Divider(
            color: Colors.transparent,
          ),
          Divider(
            color: Colors.transparent,
          ),
          Divider(
            color: Colors.transparent,
          ),
          Divider(
            color: Colors.transparent,
          ),
          Divider(
            color: Colors.transparent,
          ),
          Divider(
            color: Colors.transparent,
          ),
          Divider(
            color: Colors.transparent,
          ),
          Divider(
            color: Colors.transparent,
          ),
          Divider(
            color: Colors.transparent,
          ),
          Divider(
            color: Colors.transparent,
          ),
          Divider(
            color: Colors.transparent,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Hakkında'),
            onTap: () => Navigator.pushNamed(context, '/hakkinda'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ayarlar'),
            onTap: () => Navigator.pushNamed(context, '/ayarlar'),
          ),
          Divider(),
          ListTile(
            title: Text('Çıkış'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => cikisSorgu(),
          )
        ],
      ),
    );
  }
}

/*onTap: pickImage,
                  child: foto != null
                      ? Image.file(foto!)
                      : Image.asset('assets/fotoyok.png', fit: BoxFit.fill)*/
