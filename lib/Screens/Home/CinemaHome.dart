import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';
import '../../Widgets/BottomNavBar.dart';

class CinemaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homepaTE (65:534)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // example1Wrg (65:535)
              left: 11.0993041992*fem,
              top: 134.3833007812*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 3.5*fem, 0*fem, 0*fem),
                width: 367.72*fem,
                height: 335.61*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupcs4y1YY (P4LdeLKnbVnCY1hvzRCs4Y)
                      margin: EdgeInsets.fromLTRB(12.67*fem, 0*fem, 177.72*fem, 10.17*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // movieXmn (65:539)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.67*fem, 0.58*fem),
                            width: 26.67*fem,
                            height: 20.67*fem,
                            child: Image.asset(
                              'assets/page-1/images/movie-FL8.png',
                              width: 26.67*fem,
                              height: 20.67*fem,
                            ),
                          ),
                          Text(
                            // startrek2009FBz (65:537)
                            'Star Trek (2009)',
                            style: SafeGoogleFont (
                              'Radio Canada',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2*ffem/fem,
                              letterSpacing: 0.18*fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // k1y7z (65:536)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                      width: 367.72*fem,
                      height: 206.93*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10*fem),
                        child: Image.asset(
                          'assets/page-1/images/k-1-ftg.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // pmH8g (65:601)
                      margin: EdgeInsets.fromLTRB(0.16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        '12/12/2011 12:56PM',
                        style: SafeGoogleFont (
                          'Radio Canada',
                          fontSize: 10*ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.2*ffem/fem,
                          letterSpacing: 0.1*fem,
                          color: Color(0x7f000000),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupyq4uynC (P4LdkVpBbTJiSZf5JgYQ4U)
                      margin: EdgeInsets.fromLTRB(10.16*fem, 0*fem, 10.52*fem, 0*fem),
                      width: double.infinity,
                      height: 78*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // startrek2009isasciencefictionf (65:538)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 12.8*fem, 0*fem),
                            constraints: BoxConstraints (
                              maxWidth: 309*fem,
                            ),
                            child: Text(
                              '"Star Trek" (2009) is a science fiction film that serves as a prequel to the original "Star Trek" television series.',
                              style: SafeGoogleFont (
                                'Radio Canada',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2*ffem/fem,
                                letterSpacing: 0.15*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // group67X2 (65:541)
                            padding: EdgeInsets.fromLTRB(2.1*fem, 3.27*fem, 2.1*fem, 2*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // favoritefill0wght400grad0opsz2 (65:544)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.27*fem),
                                  width: 18.34*fem,
                                  height: 17.46*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/favoritefill0wght400grad0opsz24-1-Lnp.png',
                                    width: 18.34*fem,
                                    height: 17.46*fem,
                                  ),
                                ),
                                Container(
                                  // schedulefill0wght400grad0opsz2 (65:542)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-A5r.png',
                                    width: 21.04*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Container(
                                  // forumfill0wght400grad0opsz241F (65:546)
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/forumfill0wght400grad0opsz24-1-PAk.png',
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
              // example2NbN (65:602)
              left: 11.0993041992*fem,
              top: 499.990234375*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 3.5*fem, 0*fem, 0*fem),
                width: 367.72*fem,
                height: 335.61*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupom3sgMA (P4Le8uLWvtoM3cwLe3om3S)
                      margin: EdgeInsets.fromLTRB(12.67*fem, 0*fem, 198.72*fem, 10.17*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // moviebyv (65:606)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.67*fem, 0.58*fem),
                            width: 26.67*fem,
                            height: 20.67*fem,
                            child: Image.asset(
                              'assets/page-1/images/movie-Ckc.png',
                              width: 26.67*fem,
                              height: 20.67*fem,
                            ),
                          ),
                          Text(
                            // spiritedawayX6t (65:604)
                            'Spirited Away',
                            style: SafeGoogleFont (
                              'Radio Canada',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2*ffem/fem,
                              letterSpacing: 0.18*fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // k1SzY (65:603)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                      width: 367.72*fem,
                      height: 206.93*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10*fem),
                        child: Image.asset(
                          'assets/page-1/images/k-1-4rY.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // autogroupzuqyyDn (P4LeE9gmooZMRdVPoKzuQY)
                      margin: EdgeInsets.fromLTRB(10.16*fem, 0*fem, 10.52*fem, 0*fem),
                      width: double.infinity,
                      height: 78*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // wherethegrassgrowsisaheartwarm (65:605)
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
                              ),
                            ),
                          ),
                          Container(
                            // group6LTe (65:608)
                            padding: EdgeInsets.fromLTRB(2.1*fem, 3.27*fem, 2.1*fem, 2*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // favoritefill0wght400grad0opsz2 (65:611)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.27*fem),
                                  width: 18.34*fem,
                                  height: 17.46*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/favoritefill0wght400grad0opsz24-1-sqv.png',
                                    width: 18.34*fem,
                                    height: 17.46*fem,
                                  ),
                                ),
                                Container(
                                  // schedulefill0wght400grad0opsz2 (65:609)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-9St.png',
                                    width: 21.04*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Container(
                                  // forumfill0wght400grad0opsz241G (65:613)
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/forumfill0wght400grad0opsz24-1-Pzc.png',
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
              // whatsnewBsa (65:561)
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
                      color: Color(0xffb86b8e),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group5FsS (65:593)
              left: 45*fem,
              top: 83.3833007812*fem,
              child: Align(
                child: SizedBox(
                  width: 300.04*fem,
                  height: 35*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-5-9PS.png',
                    width: 300.04*fem,
                    height: 35*fem,
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