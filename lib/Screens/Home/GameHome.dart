import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';
import '../../Widgets/BottomNavBar.dart';

class GameHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homegY8L (65:703)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // example158G (65:704)
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
                      // autogrouppfgyMrU (P4LewDLgi2rtwAWjvaPfgY)
                      margin: EdgeInsets.fromLTRB(11.28*fem, 0*fem, 176.72*fem, 8.39*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // moviegtk (65:708)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.48*fem, 0*fem),
                            width: 29.23*fem,
                            height: 21.33*fem,
                            child: Image.asset(
                              'assets/page-1/images/movie-5yN.png',
                              width: 29.23*fem,
                              height: 21.33*fem,
                            ),
                          ),
                          Container(
                            // genshinimpactoyN (65:706)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.78*fem),
                            child: Text(
                              'Genshin Impact',
                              style: SafeGoogleFont (
                                'Radio Canada',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2*ffem/fem,
                                letterSpacing: 0.18*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // k17DN (65:705)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                      width: 367.72*fem,
                      height: 206.93*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10*fem),
                        child: Image.asset(
                          'assets/page-1/images/k-1-Ayr.png',
                        ),
                      ),
                    ),
                    Container(
                      // autogroupucbnRE4 (P4Lf2DCMjZmrXwEKKDucbn)
                      margin: EdgeInsets.fromLTRB(10.16*fem, 0*fem, 10.52*fem, 0*fem),
                      width: double.infinity,
                      height: 78*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // genshinimpactisanopenworldacti (65:707)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.8*fem, 0*fem),
                            constraints: BoxConstraints (
                              maxWidth: 309*fem,
                            ),
                            child: Text(
                              '"Genshin Impact" is an open-world action role-playing game set in the fantasy world of Teyvat, a land filled with magic and elemental powers.',
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
                            // group6zAg (65:710)
                            padding: EdgeInsets.fromLTRB(2.1*fem, 3.27*fem, 2.1*fem, 2*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // favoritefill0wght400grad0opsz2 (65:713)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.27*fem),
                                  width: 18.34*fem,
                                  height: 17.46*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/favoritefill0wght400grad0opsz24-1-uw2.png',
                                    width: 18.34*fem,
                                    height: 17.46*fem,
                                  ),
                                ),
                                Container(
                                  // schedulefill0wght400grad0opsz2 (65:711)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-RDn.png',
                                    width: 21.04*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Container(
                                  // forumfill0wght400grad0opsz2418 (65:715)
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/forumfill0wght400grad0opsz24-1-PAt.png',
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
              // example2r6Q (66:3681)
              left: 11.3828735352*fem,
              top: 499.990234375*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 3.5*fem, 0*fem, 0*fem),
                width: 367.72*fem,
                height: 335.61*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroup6czzjvt (P4LfNNHSQcf47qzGiu6CZz)
                      margin: EdgeInsets.fromLTRB(11.28*fem, 0*fem, 94.72*fem, 8.39*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // moviesXJ (66:3685)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.48*fem, 0*fem),
                            width: 29.23*fem,
                            height: 21.33*fem,
                            child: Image.asset(
                              'assets/page-1/images/movie-Gag.png',
                              width: 29.23*fem,
                              height: 21.33*fem,
                            ),
                          ),
                          Container(
                            // finalfantasyviiremakeaRi (66:3683)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.78*fem),
                            child: Text(
                              'Final Fantasy VII Remake',
                              style: SafeGoogleFont (
                                'Radio Canada',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2*ffem/fem,
                                letterSpacing: 0.18*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // k1UGC (66:3682)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                      width: 367.72*fem,
                      height: 206.93*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10*fem),
                        child: Image.asset(
                          'assets/page-1/images/k-1-qek.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // autogroupc9vezEY (P4LfTN97S9a1ichr7Yc9VE)
                      margin: EdgeInsets.fromLTRB(10.16*fem, 0*fem, 10.52*fem, 0*fem),
                      width: double.infinity,
                      height: 78*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // wherethegrassgrowsisaheartwarm (66:3684)
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
                            // group6ksv (66:3687)
                            padding: EdgeInsets.fromLTRB(2.1*fem, 3.27*fem, 2.1*fem, 2*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // favoritefill0wght400grad0opsz2 (66:3690)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.27*fem),
                                  width: 18.34*fem,
                                  height: 17.46*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/favoritefill0wght400grad0opsz24-1-Cs6.png',
                                    width: 18.34*fem,
                                    height: 17.46*fem,
                                  ),
                                ),
                                Container(
                                  // schedulefill0wght400grad0opsz2 (66:3688)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-UdS.png',
                                    width: 21.04*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Container(
                                  // forumfill0wght400grad0opsz241i (66:3692)
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/forumfill0wght400grad0opsz24-1-jcG.png',
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
              // whatsneweM2 (65:730)
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