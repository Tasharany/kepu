import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';

import '../../Widgets/BottomNavBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Profile(),
        ]),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
          child: Stack(
            children: [
              Positioned(
                left: 1,
                top: 0,
                child: Container(
                  width: 390,
                  height: 324.16,
                  decoration: ShapeDecoration(
                    color: Color(0xFF3EA4DE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 137.04,
                top: 49.38,
                child: Text(
                  '@username',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Radio Canada',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 0.20,
                  ),
                ),
              ),
              Positioned(
                left: 350.95,
                top: 45.88,
                child: Container(
                  width: 32,
                  height: 31,
                  padding: const EdgeInsets.only(
                    top: 3.87,
                    left: 4,
                    right: 4,
                    bottom: 3.88,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 131,
                top: 123.38,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 88.54,
                top: 268.38,
                child: Container(
                  width: 215,
                  height: 30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 100,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF7F7F7),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 3, color: Color(0xFFFBCD71)),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text(
                                    'edit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 115,
                        top: 0,
                        child: Container(
                          width: 100,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFBCD71),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text(
                                    'settings',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 48.59,
                top: 347.67,
                child: SizedBox(
                  width: 294.83,
                  height: 30,
                  child: Text(
                    '“quit, don’t quit, noodles”',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Radio Canada',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 42.74,
                top: 401.17,
                child: Container(
                  width: 306.60,
                  height: 54.77,
                  decoration: ShapeDecoration(
                    color: Color(0x333EA4DE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 61.29,
                top: 489.56,
                child: Container(
                  width: 267.42,
                  height: 214.23,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 158,
                        child: Container(
                          width: 73,
                          height: 34,
                          padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 3),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 88,
                        child: Container(
                          width: 73,
                          height: 34,
                          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 6),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 267.42,
                          height: 214.23,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 73,
                                top: 72.12,
                                child: Container(
                                  width: 64,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/64x70"),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 73,
                                top: 0,
                                child: Container(
                                  width: 64,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/64x70"),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 138,
                                top: 0,
                                child: Container(
                                  width: 64,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/64x70"),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 203.42,
                                top: 0,
                                child: Container(
                                  width: 64,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/64x70"),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 138,
                                top: 72.12,
                                child: Container(
                                  width: 64,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 203.42,
                                top: 72.12,
                                child: Container(
                                  width: 64,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 73,
                                top: 144.23,
                                child: Container(
                                  width: 64,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 138,
                                top: 144.23,
                                child: Container(
                                  width: 64,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 203.42,
                                top: 144.23,
                                child: Container(
                                  width: 64,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 18,
                                child: Container(
                                  width: 73,
                                  height: 34,
                                  padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 5),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 158,
                                top: 93,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.all(2.50),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 93,
                                top: 167.23,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.all(2.50),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 158.42,
                                top: 167.23,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.all(2.50),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 223,
                                top: 167.23,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.all(2.50),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 222.71,
                                top: 93.44,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.only(
                                    top: 2.06,
                                    left: 3.21,
                                    right: 1.79,
                                    bottom: 2.94,
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 183.54,
                top: 416.56,
                child: Container(
                  width: 25,
                  height: 24,
                  padding: const EdgeInsets.only(
                    top: 2.65,
                    left: 2.08,
                    right: 2.08,
                    bottom: 3,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 1,
                top: 747,
                child: Container(
                  width: 390,
                  height: 97,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 390*fem,
                          height: 97*fem,
                          child: BottomNavBar(
                            currentIndex: 0,
                          ),
                      ),
                      ),
                      Positioned(
                        left: 164.51,
                        top: 11,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(
                              side: BorderSide(width: 6, color: Color(0xFF93D5B8)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30.50,
                        top: 20.50,
                        child: Container(
                          width: 329,
                          height: 43.10,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 225.50,
                                top: 0,
                                child: Container(
                                  width: 41,
                                  height: 41,
                                  padding: const EdgeInsets.all(1.71),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 41,
                                  height: 41,
                                  padding: const EdgeInsets.only(
                                    top: 1.71,
                                    left: 1.71,
                                    right: 1.71,
                                    bottom: 5.13,
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 63,
                                top: 0,
                                child: Container(
                                  width: 41,
                                  height: 41,
                                  padding: const EdgeInsets.symmetric(horizontal: 3.57, vertical: 4.70),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 33.87,
                                        height: 31.60,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/34x32"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 329,
                                top: 0,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                  child: Container(
                                    width: 41,
                                    height: 41,
                                    padding: const EdgeInsets.all(6.83),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}