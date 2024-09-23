import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AutenticacaoServico {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  cadastrarUsuario({
    required String nome, 
    required String email, 
    required String senha,
  }) {
    _firebaseAuth.createUserWithEmailAndPassword(
      email: email, 
      password: senha,
    );
  }
}