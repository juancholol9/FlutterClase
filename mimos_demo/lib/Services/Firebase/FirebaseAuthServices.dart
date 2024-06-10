import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String correo, String contrasena) async{
    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: correo, password: contrasena);
      return credential.user;
    }catch (e){
      print("Somer error ocurred");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(String correo, String contrasena) async{
    try{
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: correo, password: contrasena);
      return credential.user;
    }catch (e){
      print("Somer error ocurred");
    }
    return null;
  }

}