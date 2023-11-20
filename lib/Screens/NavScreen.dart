import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kepu/Screens/CoverScreen.dart';
import 'package:kepu/Screens/LoginScreen.dart';
import 'package:kepu/Screens/MainScreen.dart';
//new screens
import 'package:kepu/Screens/HomeScreen.dart';


class NavScreen extends StatefulWidget with RouteAware {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //return snapshot.hasData ? const MainScreen() : const CoverScreen(); //1st
          return snapshot.hasData ? const MainScreen() : const HomeScreen();

        },
      ),
    );
  }
}
