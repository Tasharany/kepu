import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';
import '../../Widgets/BottomNavBar.dart';

class MusicHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homebHat (65:782)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // example1pap (65:783)
              left: 11.0993041992*fem,
              top: 134.3833007812*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 2.62*fem, 0*fem, 0*fem),
                width: 367.72*fem,
                height: 350.61*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupi13aiAQ (P4LgLfzxEpYXCvzpnii13a)
                      margin: EdgeInsets.fromLTRB(13.53*fem, 0*fem, 232.72*fem, 9.06*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // movieqkp (65:787)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.72*fem, 0*fem),
                            width: 24.75*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/movie-2Ae.png',
                              width: 24.75*fem,
                              height: 24*fem,
                            ),
                          ),
                          Container(
                            // sweetnerZRv (65:785)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.23*fem),
                            child: Text(
                              'Sweetner',
                              style: SafeGoogleFont (
                                'Radio Canada',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2*ffem/fem,
                                letterSpacing: 0.18*fem,
                                color: Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // k1TnC (65:784)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                      width: 367.72*fem,
                      height: 206.93*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10*fem),
                        child: Image.asset(
                          'assets/page-1/images/k-1-ZJS.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // autogrouptyzjNeG (P4LgS1BQQBvDBMVhsYTYZJ)
                      margin: EdgeInsets.fromLTRB(10.16*fem, 0*fem, 10.52*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // sweeteneristhefourthstudioalbu (65:786)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 12.8*fem, 0*fem),
                            constraints: BoxConstraints (
                              maxWidth: 309*fem,
                            ),
                            child: Text(
                              '"Sweetener" is the fourth studio album by American singer Ariana Grande, released on August 17, 2018. The album marked a significant shift in Grande\'s musical style and personal narrative.',
                              style: SafeGoogleFont (
                                'Radio Canada',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2*ffem/fem,
                                letterSpacing: 0.15*fem,
                                color: Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Container(
                            // group6iLk (65:789)
                            padding: EdgeInsets.fromLTRB(2.1*fem, 3.27*fem, 2.1*fem, 2*fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // favoritefill0wght400grad0opsz2 (65:792)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.27*fem),
                                  width: 18.34*fem,
                                  height: 17.46*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/favoritefill0wght400grad0opsz24-1-czv.png',
                                    width: 18.34*fem,
                                    height: 17.46*fem,
                                  ),
                                ),
                                Container(
                                  // schedulefill0wght400grad0opsz2 (65:790)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-P1C.png',
                                    width: 21.04*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Container(
                                  // forumfill0wght400grad0opsz2413 (65:794)
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/forumfill0wght400grad0opsz24-1-18n.png',
                                    width: 21.04*fem,
                                    height: 20*fem,
                                  ),
                                ),
                              ],
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
              // example2Ac4 (66:3694)
              left: 11.258972168*fem,
              top: 499.990234375*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 2.62*fem, 0*fem, 0*fem),
                width: 367.72*fem,
                height: 335.61*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupawlyxH2 (P4LgmVcvoZsx1xh3tsAwLY)
                      margin: EdgeInsets.fromLTRB(13.53*fem, 0*fem, 196.72*fem, 9.06*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // moviegD2 (66:3698)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.72*fem, 0*fem),
                            width: 24.75*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/movie-2Ae.png',
                              width: 24.75*fem,
                              height: 24*fem,
                            ),
                          ),
                          Container(
                            // newjeansepbqn (66:3696)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.23*fem),
                            child: Text(
                              'New Jeans EP',
                              style: SafeGoogleFont (
                                'Radio Canada',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2*ffem/fem,
                                letterSpacing: 0.18*fem,
                                color: Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // k17JL (66:3695)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                      width: 367.72*fem,
                      height: 206.93*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10*fem),
                        child: Image.asset(
                          'assets/page-1/images/k-1-WoL.png',
                        ),
                      ),
                    ),
                    Container(
                      // autogrouplvn42gC (P4LgqzVS8M6p4FjfkFLVN4)
                      margin: EdgeInsets.fromLTRB(10.16*fem, 0*fem, 10.52*fem, 0*fem),
                      width: double.infinity,
                      height: 78*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // wherethegrassgrowsisaheartwarm (66:3697)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.8*fem, 0*fem),
                            constraints: BoxConstraints (
                              maxWidth: 309*fem,
                            ),
                            child: Text(
                              '"Where the Grass Grows" is a heartwarming film about a person finding solace and purpose in a rural town\'s nature and community.',
                              style: SafeGoogleFont (
                                'Radio Canada',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2*ffem/fem,
                                letterSpacing: 0.15*fem,
                                color: Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Container(
                            // group6Cyz (66:3700)
                            padding: EdgeInsets.fromLTRB(2.1*fem, 3.27*fem, 2.1*fem, 2*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // favoritefill0wght400grad0opsz2 (66:3703)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.27*fem),
                                  width: 18.34*fem,
                                  height: 17.46*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/favoritefill0wght400grad0opsz24-1-czv.png',
                                    width: 18.34*fem,
                                    height: 17.46*fem,
                                  ),
                                ),
                                Container(
                                  // schedulefill0wght400grad0opsz2 (66:3701)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-P1C.png',
                                    width: 21.04*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Container(
                                  // forumfill0wght400grad0opsz241A (66:3705)
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/forumfill0wght400grad0opsz24-1-18n.png',
                                    width: 21.04*fem,
                                    height: 20*fem,
                                  ),
                                ),
                              ],
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
              // whatsnewtVS (65:796)
              left: 134.5400390625*fem,
              top: 49.3833007812*fem,
              child: Align(
                child: SizedBox(
                  width: 121*fem,
                  height: 24*fem,
                  child: Text(
                    'what’s new?',
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
              left: 45*fem,
              top: 83.3833007812*fem,
              child:
              Container(
                height: 34.83*fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
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
                          GoRouter.of(context).go('/cinemahome');
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              )
                          ),
                          side: BorderSide(color: Colors.black87, width: 1),
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
                          GoRouter.of(context).go('/gamehome');
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(

                          ),
                          side: BorderSide(color: Colors.black87, width: 1),
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
                          GoRouter.of(context).go('/musichome');
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xffb0cef1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )
                          ),
                          side: BorderSide(color: Colors.black87, width: 1),
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
              // bottomhub2f4 (60:305)
              left: 0*fem,
              top: 765*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 97*fem,
                  child: BottomNavBar(
                    currentIndex: 0,
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