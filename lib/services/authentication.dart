import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //Giriş yap fonksiyonu
  Future<User?> signIn(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

//Çıkış yap fonksiyonu
  signOut() async {
    return await _auth.signOut();
  }

  Future<User?> createUser(String name, String surname, String email, String password, String passwordagain) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _firestore.collection("Users").doc(user.user?.uid).set({
      "isim": name,
      "soyisim": surname,
      "eposta": email,
      "şifre": password,
      "şifretekrar": passwordagain,
    });

    return user.user;
  }
}
