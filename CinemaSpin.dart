import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';
import '../../Widgets/BottomNavBar.dart';

class CinemaSpin extends StatefulWidget {
  @override
  _CinemaSpinState createState() => _CinemaSpinState();
}

class _CinemaSpinState extends State<CinemaSpin>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double _spinValue = 0.0;
  String _selectedMovie = '';
  List<String> _movies = [
    "Movie 1",
    "Movie 2",
    "Movie 3",
    // Add more movie titles here
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Adjust duration as needed
    );
  }

  void _spinContainer() {
    if (_controller.isAnimating) return;

    final Random random = Random();
    double randomSpin = random.nextDouble() * 5 + 5; // Random spinning rounds

    setState(() {
      _spinValue = randomSpin * pi * 2;
    });

    _controller.forward(from: 0.0).whenComplete(() {
      setState(() {
        int randomIndex = random.nextInt(_movies.length);
        _selectedMovie = _movies[randomIndex];
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


class CinemaSpin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // randomQqr (66:2349)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // randomplayXvU (66:2378)
              left: 134.0400390625*fem,
              top: 49.3833007812*fem,
              child: Align(
                child: SizedBox(
                  width: 122*fem,
                  height: 24*fem,
                  child: Text(
                    'random play',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Radio Canada',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2*ffem/fem,
                      letterSpacing: 0.2*fem,
                      color: Color(0xffb86b8e),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group51Kr (66:2419)
              left: 45*fem,
              top: 83.3833007812*fem,
              child: Align(
                child: SizedBox(
                  width: 300.04*fem,
                  height: 35*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-5-WbW.png',
                    width: 300.04*fem,
                    height: 35*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // loginbuttonug8 (66:2428)
              left: 92.5190429688*fem,
              top: 542.3525390625*fem,
              child: Container(
                width: 205.03*fem,
                height: 44.86*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffbcd71),
                  borderRadius: BorderRadius.circular(4*fem),
                ),
                child: Center(
                  child: Center(
                    child: Text(
                      'spin',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Radio Canada',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2*ffem/fem,
                        color: Color(0xff000000),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // marginsMHE (66:2388)
              left: 11.0991210938*fem,
              top: 0.00390625*fem,
              child: Container(
                width: 368.01*fem,
                height: 836.54*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouphyg85U8 (P4LWfHThbwyWCKopbPhyG8)
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // amcix (66:2392)
                            margin: EdgeInsets.fromLTRB(0*fem, 6.33*fem, 14.18*fem, 0*fem),
                            child: Text(
                              '12:00 AM',
                              style: SafeGoogleFont (
                                'Radio Canada',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2*ffem/fem,
                                letterSpacing: 0.12*fem,
                                color: Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Container(
                            // applethingj2t (66:2397)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.38*fem, 1*fem),
                            width: 231.44*fem,
                            height: 20.33*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff1b1b1b),
                              borderRadius: BorderRadius.only (
                                bottomRight: Radius.circular(10*fem),
                                bottomLeft: Radius.circular(10*fem),
                              ),
                            ),
                          ),
                          Container(
                            // signald8G (66:2391)
                            margin: EdgeInsets.fromLTRB(0*fem, 2.23*fem, 4.22*fem, 0*fem),
                            width: 13*fem,
                            height: 10.9*fem,
                            child: Image.asset(
                              'assets/page-1/images/signal-qeU.png',
                              width: 13*fem,
                              height: 10.9*fem,
                            ),
                          ),
                          Container(
                            // wifiwPr (66:2389)
                            margin: EdgeInsets.fromLTRB(0*fem, 2.55*fem, 5*fem, 0*fem),
                            width: 14*fem,
                            height: 9.74*fem,
                            child: Image.asset(
                              'assets/page-1/images/wifi-28c.png',
                              width: 14*fem,
                              height: 9.74*fem,
                            ),
                          ),
                          Container(
                            // battery4UU (66:2393)
                            margin: EdgeInsets.fromLTRB(0*fem, 4.98*fem, 0*fem, 0*fem),
                            width: 19.79*fem,
                            height: 8.3*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-dMN.png',
                              width: 19.79*fem,
                              height: 8.3*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupfp1rBJC (P4LWvH2igYiNzdxYmLFp1r)
                      padding: EdgeInsets.fromLTRB(36.45*fem, 197.02*fem, 37.56*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupjs6chnL (P4LWqHB3f1oRPsEyNgjs6c)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 318.74*fem),
                            padding: EdgeInsets.fromLTRB(1.1*fem, 0.99*fem, 1.16*fem, 0.99*fem),
                            width: double.infinity,
                            height: 294*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(147*fem),
                              border: Border (
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                            child: Center(
                              // ellipse4ZZe (66:2433)
                              child: SizedBox(
                                width: 291.74*fem,
                                height: 290.83*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ellipse-4.png',
                                  width: 291.74*fem,
                                  height: 290.83*fem,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // applebuttonguA (66:2398)
                            margin: EdgeInsets.fromLTRB(85.12*fem, 0*fem, 85.19*fem, 0*fem),
                            width: double.infinity,
                            height: 5.45*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // bottomhub2f4 (60:305)
              left: 0*fem,
              top: 747*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 97*fem,
                  child: BottomNavBar(
                    currentIndex: 2,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse5iqr (66:2436)
              left: 0*fem,
              top: 158.7841796875*fem,
              child: Align(
                child: SizedBox(
                  width: 411.94*fem,
                  height: 411.94*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-5.png',
                    width: 411.94*fem,
                    height: 411.94*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse6F56 (66:2437)
              left: 4.0986328125*fem,
              top: 174.5869140625*fem,
              child: Align(
                child: SizedBox(
                  width: 380.83*fem,
                  height: 380.33*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-6.png',
                    width: 380.83*fem,
                    height: 380.33*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse7k1r (66:2438)
              left: 4.0986328125*fem,
              top: 174.5869140625*fem,
              child: Align(
                child: SizedBox(
                  width: 380.83*fem,
                  height: 380.33*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-7.png',
                    width: 380.83*fem,
                    height: 380.33*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // addSQU (66:2441)
              left: 47.546875*fem,
              top: 218.3525390625*fem,
              child: Align(
                child: SizedBox(
                  width: 294*fem,
                  height: 294*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(147*fem),
                      border: Border (
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // addhrC (66:2439)
              left: 158.8764648438*fem,
              top: 329.7155761719*fem,
              child: Align(
                child: SizedBox(
                  width: 71.27*fem,
                  height: 71.27*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(35.6369628906*fem),
                      color: Color(0xffffffff),
                      border: Border (
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse3NBe (66:2431)
              left: 164.2495117188*fem,
              top: 190.5295410156*fem,
              child: Align(
                child: SizedBox(
                  width: 60.63*fem,
                  height: 73.44*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-3.png',
                    width: 60.63*fem,
                    height: 73.44*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse8t9z (66:2440)
              left: 176.2783203125*fem,
              top: 204.5710449219*fem,
              child: Align(
                child: SizedBox(
                  width: 37.44*fem,
                  height: 45.35*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-8.png',
                    width: 37.44*fem,
                    height: 45.35*fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}