import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/screens/payment_screen.dart';

class User {
  storeNewUser(user, context) async {
    await Firestore.instance
        .collection("users")
        .document(user.uid)
        .setData({'email': user.email, 'uid': user.uid}).then((value) {
      Navigator.of(context).pop();
      Navigator.of(context).pushReplacementNamed(PaymentScreen.id);
    }).catchError((e) {
      print("Not Happening");
    });
  }
}
