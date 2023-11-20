import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kepu/Services/auth.dart';
import 'package:kepu/Services/consts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
//randomScreen
class RandomScreen extends StatelessWidget {
  const RandomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          color: background_primary,
          child: SafeArea(
              child: Container(
                color: background_primary,
                height: size.height,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height * 0.3,
                    ),
                    const Center(
                      //things


              )
    ]
    )
    )
    ))


    );
}}