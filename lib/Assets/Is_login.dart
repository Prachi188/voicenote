import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class check_login {
  bool is_login(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if (user != null) {
      return true;
    } else {
      return false;
    }
    // return StreamBuilder(
    //     stream: FirebaseAuth.instance.authStateChanges(),
    //     builder: (BuildContext context, snapshot) {
    //       if (snapshot.hasData) {
    //         return MyHomePage();
    //       } else {
    //         return Login();
    //       }
    // });
  }
}
