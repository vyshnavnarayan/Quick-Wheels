import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quick_wheels/login/view/login_page.dart';

class SignupReppo {
  Future<void> createUser(String email, String password, BuildContext context,
      String firstName, String secondName, String phoneNumber) async {
    final _auth = FirebaseAuth.instance;
    final userReff = FirebaseFirestore.instance.collection('userCollection');
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await userReff.doc(_auth.currentUser!.uid).set({
        'First name': firstName,
        'Second name': secondName,
        'Email': email,
        'Phone number': phoneNumber,
        'Password': password,
        'User ID': _auth.currentUser!.uid
      });
      Get.to(Login());
    } on FirebaseAuthException catch (e) {
      rethrow;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.code)));
    }
  }
}
