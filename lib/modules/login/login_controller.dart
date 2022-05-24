import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class LoginController {
  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  void login() async {
    try {
      final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: "arel@hotmail.com", password: "Paiol@@");
      print(response.user);
    } on FirebaseAuthException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  void create() async {
    try {
      final response = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: "arel@hotmail.com", password: "Paiol@@");
      print(response.user);
    } on FirebaseAuthException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  void createProduct() async {
    FirebaseFirestore.instance.collection('pedido').doc('#0001').set({});
  }
}
