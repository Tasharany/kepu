import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';
import '../../Widgets/BottomNavBar.dart';

class GameSpin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // randomtsN (66:2568)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // randomplay2Tn (66:2569)
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
                      color: Color(0xff6ca68c),
                    ),
                  ),
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
              // loginbuttonQjE (66:2579)
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
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // marginsetU (66:2582)
              left: 11.0991210938*fem,
              top: 0.00390625*fem,
              child: Container(
                width: 368.01*fem,
                height: 836.54*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupa4jnB7i (P4Lczbuf3d5xkzVdnwA4jN)
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // amidS (66:2586)
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
                              ),
                            ),
                          ),
                          Container(
                            // applethingDq6 (66:2591)
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
                            // signaljoS (66:2585)
                            margin: EdgeInsets.fromLTRB(0*fem, 2.23*fem, 4.22*fem, 0*fem),
                            width: 13*fem,
                            height: 10.9*fem,
                            child: Image.asset(
                              'assets/page-1/images/signal-V9v.png',
                              width: 13*fem,
                              height: 10.9*fem,
                            ),
                          ),
                          Container(
                            // wifiefW (66:2583)
                            margin: EdgeInsets.fromLTRB(0*fem, 2.55*fem, 5*fem, 0*fem),
                            width: 14*fem,
                            height: 9.74*fem,
                            child: Image.asset(
                              'assets/page-1/images/wifi-8vg.png',
                              width: 14*fem,
                              height: 9.74*fem,
                            ),
                          ),
                          Container(
                            // batteryNbW (66:2587)
                            margin: EdgeInsets.fromLTRB(0*fem, 4.98*fem, 0*fem, 0*fem),
                            width: 19.79*fem,
                            height: 8.3*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-Q7W.png',
                              width: 19.79*fem,
                              height: 8.3*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupeiovHCg (P4LdE6XB1xkYssdVM5eiov)
                      padding: EdgeInsets.fromLTRB(36.45*fem, 197.02*fem, 37.56*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupoylyogp (P4Ld9MA5qoge4LkPj4oyLY)
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
                              // ellipse45eL (66:2614)
                              child: SizedBox(
                                width: 291.74*fem,
                                height: 290.83*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ellipse-4-Csv.png',
                                  width: 291.74*fem,
                                  height: 290.83*fem,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // applebutton1Xz (66:2592)
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
              // bottomhubjyn (66:2593)
              left: 0*fem,
              top: 747*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 97*fem,
                  child: Image.asset(
                    'assets/page-1/images/bottom-hub-q6c.png',
                    width: 390*fem,
                    height: 97*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse5eqr (66:2615)
              left: 0*fem,
              top: 158.7841796875*fem,
              child: Align(
                child: SizedBox(
                  width: 411.94*fem,
                  height: 411.94*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-5-wRn.png',
                    width: 411.94*fem,
                    height: 411.94*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse6NWx (66:2616)
              left: 4.0986328125*fem,
              top: 174.5869140625*fem,
              child: Align(
                child: SizedBox(
                  width: 380.83*fem,
                  height: 380.33*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-6-nyr.png',
                    width: 380.83*fem,
                    height: 380.33*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse7V5n (66:2617)
              left: 4.0986328125*fem,
              top: 174.5869140625*fem,
              child: Align(
                child: SizedBox(
                  width: 380.83*fem,
                  height: 380.33*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-7-6LU.png',
                    width: 380.83*fem,
                    height: 380.33*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // addCkt (66:2618)
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
              // add77A (66:2619)
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
              // ellipse3C8c (66:2620)
              left: 164.2495117188*fem,
              top: 190.5295410156*fem,
              child: Align(
                child: SizedBox(
                  width: 60.63*fem,
                  height: 73.44*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-3-BDn.png',
                    width: 60.63*fem,
                    height: 73.44*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse8KDE (66:2621)
              left: 176.2783203125*fem,
              top: 204.5710449219*fem,
              child: Align(
                child: SizedBox(
                  width: 37.44*fem,
                  height: 45.35*fem,
                  child: Image.asset(
                    'assets/page-1/images/ellipse-8-ieQ.png',
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