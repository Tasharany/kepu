import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';

import '../../Widgets/BottomNavBar.dart';

class CinemaPouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 390;
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height,
          width: 550,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Positioned(
                left: 164.04,
                top: 49.38,
                child: Text(
                  'pouch',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF125D9F),
                    fontSize: 20,
                    fontFamily: 'Radio Canada',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 0.20,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 93.38,
                child: Container(
                  width: 390,
                  height: 793.70,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 104.50,
                        top: 0,
                        child: Container(
                          width: 92.89,
                          height: 34.83,
                          decoration: BoxDecoration(
                            color: Color(0x3393D5B8),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                            border: Border(
                              left: BorderSide(width: 0.50, color: Color(0xFF6BA68C)),
                              top: BorderSide(width: 0.50, color: Color(0xFF6BA68C)),
                              right: BorderSide(width: 0.50, color: Color(0xFF6BA68C)),
                              bottom: BorderSide(color: Color(0xFF6BA68C)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 200.87,
                        top: 0,
                        child: Container(
                          width: 92.89,
                          height: 34.83,
                          decoration: BoxDecoration(
                            color: Color(0x337BB0F1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                            border: Border(
                              left: BorderSide(width: 0.50, color: Color(0xFF7BB0F1)),
                              top: BorderSide(width: 0.50, color: Color(0xFF7BB0F1)),
                              right: BorderSide(width: 0.50, color: Color(0xFF7BB0F1)),
                              bottom: BorderSide(color: Color(0xFF7BB0F1)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 235.32,
                        top: 5.42,
                        child: Container(
                          width: 24,
                          height: 24,
                          padding: const EdgeInsets.all(3),
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
                        top: 34.83,
                        child: Container(
                          width: 390,
                          height: 725.78,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFFAFD),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFFB86B8E),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8.13,
                        top: 0,
                        child: Container(
                          width: 92.89,
                          height: 34.83,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFAFD),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                            border: Border(
                              left: BorderSide(width: 0.50, color: Color(0xFFB86B8E)),
                              top: BorderSide(width: 0.50, color: Color(0xFFB86B8E)),
                              right: BorderSide(width: 0.50, color: Color(0xFFB86B8E)),
                              bottom: BorderSide(color: Color(0xFFB86B8E)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137.01,
                        top: 4.35,
                        child: Container(
                          width: 27.87,
                          height: 27.87,
                          padding: const EdgeInsets.only(
                            top: 4.64,
                            left: 1.22,
                            right: 1.19,
                            bottom: 4.64,
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
                        left: 0,
                        top: 57.64,
                        child: SizedBox(
                          width: 390,
                          height: 22.06,
                          child: Text(
                            'cinema',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Radio Canada',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: 0.40,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 51.17,
                        child: Container(
                          width: 35,
                          height: 35,
                          padding: const EdgeInsets.all(2.92),
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
                        left: 11,
                        top: 129.70,
                        child: Container(
                          width: 368,
                          height: 664,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 20.51,
                                top: 0,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 143.51,
                                top: 0,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 266.51,
                                top: 0,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20.51,
                                top: 166,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 143.51,
                                top: 166,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 266.51,
                                top: 166,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20.51,
                                top: 332,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 143.51,
                                top: 332,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 266.51,
                                top: 332,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20.51,
                                top: 498,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 143.51,
                                top: 498,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 266.51,
                                top: 498,
                                child: Container(
                                  width: 80,
                                  height: 110,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/80x110"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0.10,
                                top: 110,
                                child: SizedBox(
                                  width: 122.90,
                                  height: 56,
                                  child: Text(
                                    'Dungeons & Dragons: Honor Among Thieves',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.09,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 123,
                                top: 110,
                                child: SizedBox(
                                  width: 122,
                                  height: 56,
                                  child: Text(
                                    'Corpse Bride',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 245,
                                top: 110,
                                child: SizedBox(
                                  width: 122.90,
                                  height: 56,
                                  child: Text(
                                    'The Batman',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -0.39,
                                top: 276,
                                child: SizedBox(
                                  width: 122.90,
                                  height: 56,
                                  child: Text(
                                    'Monsters, Inc.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 122.51,
                                top: 276,
                                child: SizedBox(
                                  width: 122,
                                  height: 56,
                                  child: Text(
                                    'Suzume',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 244.51,
                                top: 276,
                                child: SizedBox(
                                  width: 122.90,
                                  height: 56,
                                  child: Text(
                                    'Thor: Love and Thunder',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -0.39,
                                top: 442,
                                child: SizedBox(
                                  width: 122.90,
                                  height: 56,
                                  child: Text(
                                    'Harry Potter and the Chamber of Secrets',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.09,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 122.51,
                                top: 442,
                                child: SizedBox(
                                  width: 122,
                                  height: 56,
                                  child: Text(
                                    'Titanic',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 244.51,
                                top: 442,
                                child: SizedBox(
                                  width: 122.90,
                                  height: 56,
                                  child: Text(
                                    'Shrek',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0.20,
                                top: 608,
                                child: SizedBox(
                                  width: 122.90,
                                  height: 56,
                                  child: Text(
                                    'movie',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 123.10,
                                top: 608,
                                child: SizedBox(
                                  width: 122,
                                  height: 56,
                                  child: Text(
                                    'movie',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 245.10,
                                top: 608,
                                child: SizedBox(
                                  width: 122.90,
                                  height: 56,
                                  child: Text(
                                    'movie',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Radio Canada',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                      letterSpacing: 0.14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341.23,
                        top: 53.23,
                        child: Container(
                          width: 27.50,
                          height: 30.87,
                          child: Stack(children: [

                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -285,
                top: 84,
                child: Container(
                  width: 675,
                  height: 760,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 275,
                        top: 674,
                        child: SizedBox(
                          width: 390*fem,
                          height: 97*fem,
                          child: BottomNavBar(
                            currentIndex: 2,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 315.50,
                        top: 683.50,
                        child: Container(
                          width: 329,
                          height: 41,
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
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 100,
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 11.10,
                top: 0,
                child: Container(
                  width: 368.01,
                  height: 836.54,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 329.22,
                        top: 6.33,
                        child: Container(
                          width: 14,
                          height: 11,
                          padding: const EdgeInsets.only(top: 0.74, bottom: 0.52),
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
                        top: 6.33,
                        child: Text(
                          '12:00 AM',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Radio Canada',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 0.12,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 348.22,
                        top: 9,
                        child: Container(
                          width: 19.79,
                          height: 8.30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1.09,
                                top: 1.08,
                                child: Container(
                                  width: 11.09,
                                  height: 6.15,
                                  decoration: ShapeDecoration(
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(0.70),
                                        bottomLeft: Radius.circular(0.70),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 68.18,
                        top: -0,
                        child: Container(
                          width: 231.44,
                          height: 20.33,
                          decoration: ShapeDecoration(
                            color: Color(0xFF1B1B1B),
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
                        left: 121.57,
                        top: 831.09,
                        child: Container(
                          width: 123.69,
                          height: 5.45,
                          decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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