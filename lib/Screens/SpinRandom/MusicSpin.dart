import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';
import '../../../../../Widgets/BottomNavBar.dart';

class MusicSpin extends StatefulWidget {
  @override
  _MusicSpinState createState() => _MusicSpinState();
}

class _MusicSpinState extends State<MusicSpin>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double _spinValue = 0.0;
  String _selectedMusic = '';
  List<String> _music = [
    "Music 1",
    "Music 2",
    "Music 3",
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
        int randomIndex = random.nextInt(_music.length);
        _selectedMusic = _music[randomIndex];
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


class MusicSpin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // randomJ28 (66:2622)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // randomplaycoW (66:2623)
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
                      color: Color(0xff7bb0f1),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group5tFE (66:2624)
              left: 45*fem,
              top: 83.3833007812*fem,
              child: Align(
                child: SizedBox(
                  width: 300.04*fem,
                  height: 35*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-5-ZpG.png',
                    width: 300.04*fem,
                    height: 35*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // loginbuttonz3N (66:2633)
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
              // marginsSAG (66:2636)
              left: 11.0991210938*fem,
              top: 0.00390625*fem,
              child: Container(
                width: 368.01*fem,
                height: 836.54*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupka1axeQ (P4LcB8GmJ4QrZfgfanka1a)
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // amu3r (66:2640)
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
                            // applethingPzc (66:2645)
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
                            // signalW3e (66:2639)
                            margin: EdgeInsets.fromLTRB(0*fem, 2.23*fem, 4.22*fem, 0*fem),
                            width: 13*fem,
                            height: 10.9*fem,
                            child: Image.asset(
                              'assets/page-1/images/signal-Urp.png',
                              width: 13*fem,
                              height: 10.9*fem,
                            ),
                          ),
                          Container(
                            // wifi2Gt (66:2637)
                            margin: EdgeInsets.fromLTRB(0*fem, 2.55*fem, 5*fem, 0*fem),
                            width: 14*fem,
                            height: 9.74*fem,
                            child: Image.asset(
                              'assets/page-1/images/wifi-qpG.png',
                              width: 14*fem,
                              height: 9.74*fem,
                            ),
                          ),
                          Container(
                            // batteryM4G (66:2641)
                            margin: EdgeInsets.fromLTRB(0*fem, 4.98*fem, 0*fem, 0*fem),
                            width: 19.79*fem,
                            height: 8.3*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-35W.png',
                              width: 19.79*fem,
                              height: 8.3*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupgpwwf4x (P4LcQY45ywTm68shDPgpwW)
                      padding: EdgeInsets.fromLTRB(36.45*fem, 197.02*fem, 37.56*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupxsmnmtg (P4LcKxMPNhdDTRtFSTxsmN)
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
                              // ellipse4oqN (66:2668)
                              child: SizedBox(
                                width: 291.74*fem,
                                height: 290.83*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ellipse-4-pHz.png',
                                  width: 291.74*fem,
                                  height: 290.83*fem,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // applebuttonWjn (66:2646)
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
              // ellipse5924 (66:2669)
              left: 0*fem,
              top: 158.7841796875*fem,
              child: Align(
                child: SizedBox(
                  width: 411.94*fem,
                  height: 411.94*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-5-yit.png',
                    width: 411.94*fem,
                    height: 411.94*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse6T2k (66:2670)
              left: 4.0986328125*fem,
              top: 174.5869140625*fem,
              child: Align(
                child: SizedBox(
                  width: 380.83*fem,
                  height: 380.33*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-6-oDv.png',
                    width: 380.83*fem,
                    height: 380.33*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse7NfW (66:2671)
              left: 4.0986328125*fem,
              top: 174.5869140625*fem,
              child: Align(
                child: SizedBox(
                  width: 380.83*fem,
                  height: 380.33*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-7-G1r.png',
                    width: 380.83*fem,
                    height: 380.33*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // addu9e (66:2672)
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
              // addPac (66:2673)
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
              // ellipse3Hfz (66:2674)
              left: 164.2495117188*fem,
              top: 190.5295410156*fem,
              child: Align(
                child: SizedBox(
                  width: 60.63*fem,
                  height: 73.44*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-3-iaG.png',
                    width: 60.63*fem,
                    height: 73.44*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse8QVi (66:2675)
              left: 176.2783203125*fem,
              top: 204.5710449219*fem,
              child: Align(
                child: SizedBox(
                  width: 37.44*fem,
                  height: 45.35*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-8-hQg.png',
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