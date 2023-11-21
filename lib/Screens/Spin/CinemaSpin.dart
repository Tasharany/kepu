import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';
import '../../Widgets/BottomNavBar.dart';

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
              left: 45*fem,
              top: 83.3833007812*fem,
              child:
              Container(
                height: 34.83*fem,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.black45),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4.0,
                        offset: Offset(0.0, 5)
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      child:OutlinedButton(
                        onPressed: () {
                          HapticFeedback.mediumImpact();
                          GoRouter.of(context).go('/spin');
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xfffde5f0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              )
                          ),
                          side: BorderSide.none,
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                        ),
                        child:Container(
                          // autogroupjnk6LJ8 (P4KbnJa4UxRCnNhDU2jnK6)
                          margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(33.73*fem, 8.99*fem, 33.7*fem, 7.27*fem),
                          height: double.infinity,
                          child: Center(
                            // stadiacontrollerfill0wght400gr (66:1581)
                            child: SizedBox(
                              width: 25.46*fem,
                              height: 18.58*fem,
                              child: Image.asset(
                                'assets/page-1/images/movie-8ev.png',
                                width: 25.46*fem,
                                height: 18.58*fem,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      child:OutlinedButton(
                        onPressed: () {
                          HapticFeedback.mediumImpact();
                          GoRouter.of(context).go('/gamespin');
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(

                          ),
                          side: BorderSide.none,
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                        ),
                        child:Container(
                          // autogroupjnk6LJ8 (P4KbnJa4UxRCnNhDU2jnK6)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(33.73*fem, 8.99*fem, 33.7*fem, 7.27*fem),
                          height: double.infinity,
                          child: Center(
                            // stadiacontrollerfill0wght400gr (66:1581)
                            child: SizedBox(
                              width: 25.46*fem,
                              height: 18.58*fem,
                              child: Image.asset(
                                'assets/page-1/images/stadiacontrollerfill0wght400grad0opsz24-1-4rN.png',
                                width: 25.46*fem,
                                height: 18.58*fem,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      child:OutlinedButton(
                        onPressed: () {
                          HapticFeedback.mediumImpact();
                          GoRouter.of(context).go('/musicspin');
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )
                          ),
                          side: BorderSide.none,
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                        ),
                        child:Container(
                          // autogroupjnk6LJ8 (P4KbnJa4UxRCnNhDU2jnK6)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(33.73*fem, 8.99*fem, 33.7*fem, 7.27*fem),
                          height: double.infinity,
                          child: Center(
                            // stadiacontrollerfill0wght400gr (66:1581)
                            child: SizedBox(
                              width: 25.46*fem,
                              height: 18.58*fem,
                              child: Image.asset(
                                'assets/page-1/images/headphonesfill0wght400grad0opsz24-1-9ni.png',
                                width: 25.46*fem,
                                height: 18.58*fem,
                              ),
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