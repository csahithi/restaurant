import 'package:flutter/material.dart';
import 'package:restaurant/screens/payment_screen.dart';
import 'package:restaurant/screens/welcome_screen.dart';
import 'package:restaurant/screens/login_screen.dart';
import 'package:restaurant/screens/registration_screen.dart';

void main() => runApp(EatEasy());

class EatEasy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        PaymentScreen.id: (context) => PaymentScreen(),
      },
    );
  }
}
