import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:kepu/Services/consts.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: background_primary,
      child: Center(
        child: Lottie.asset(
          "assets/kepu.json",
          width: size.width,
          frameRate: FrameRate(30),
        ),
      ),
    );
  }
}
