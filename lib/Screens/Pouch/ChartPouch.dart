import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';

import '../../Widgets/BottomNavBar.dart';

class ChartPouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Container(
        // pouchfMGQ (95:1344)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // nameUbv (95:1345)
              left: 0*fem,
              top: 49.3833007812*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33.08*fem),
                width: 390*fem,
                height: 837.7*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupklpnxmz (P4LGT2UTNqn4emK8rqkLPn)
                      padding: EdgeInsets.fromLTRB(8.13*fem, 0*fem, 8.13*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // pouchtfe (95:1351)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.92*fem, 20*fem),
                            child: Text(
                              'pouch',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Radio Canada',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2*ffem/fem,
                                letterSpacing: 0.2*fem,
                                color: Color(0xff125d9f),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupvsqqzTn (P4LEHWFGjJeKWbmxdrvsQQ)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                            height: 34.83*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.48*fem, 0*fem),
                                  child:OutlinedButton(
                                    onPressed: () {
                                      HapticFeedback.mediumImpact();
                                      GoRouter.of(context).go('/pouch');
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0xfffffafd),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5*fem),
                                            topRight: Radius.circular(5*fem),
                                          )
                                      ),
                                      side: BorderSide(color: Color(0xffb86b8e)),
                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                    ),
                                    child:Container(
                                      // autogroupjnk6LJ8 (P4KbnJa4UxRCnNhDU2jnK6)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.48*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(33.73*fem, 8.99*fem, 33.7*fem, 7.27*fem),
                                      height: double.infinity,
                                      child: Center(
                                        // stadiacontrollerfill0wght400gr (66:1581)
                                        child: SizedBox(
                                          width: 25.46*fem,
                                          height: 18.58*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-dRL.png',
                                            width: 25.46*fem,
                                            height: 18.58*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.48*fem, 0*fem),
                                  child:OutlinedButton(
                                    onPressed: () {
                                      HapticFeedback.mediumImpact();
                                      GoRouter.of(context).go('/pocketpouch');
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0x3393d5b8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5*fem),
                                            topRight: Radius.circular(5*fem),
                                          )
                                      ),
                                      side: BorderSide(color: Color(0xff6ca68c)),
                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                    ),
                                    child:Container(
                                      // autogroupjnk6LJ8 (P4KbnJa4UxRCnNhDU2jnK6)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.48*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(33.73*fem, 8.99*fem, 33.7*fem, 7.27*fem),
                                      height: double.infinity,
                                      child: Center(
                                        // stadiacontrollerfill0wght400gr (66:1581)
                                        child: SizedBox(
                                          width: 25.46*fem,
                                          height: 18.58*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/stadiacontrollerfill0wght400grad0opsz24-1.png',
                                            width: 25.46*fem,
                                            height: 18.58*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.48*fem, 0*fem),
                                  child:OutlinedButton(
                                    onPressed: () {
                                      HapticFeedback.mediumImpact();
                                      GoRouter.of(context).go('/chartpouch');
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0x337bb0f1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5*fem),
                                            topRight: Radius.circular(5*fem),
                                          )
                                      ),
                                      side: BorderSide(color: Color(0xff7bb0f1)),
                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                    ),
                                    child:Container(
                                      // autogroupjnk6LJ8 (P4KbnJa4UxRCnNhDU2jnK6)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.48*fem, 0*fem),
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
                        ],
                      ),
                    ),
                    Container(
                      // autogroup519eQhr (P4LEiaMq9Rpo6sJfWe519E)
                      padding: EdgeInsets.fromLTRB(23.92*fem, 18.4*fem, 21.27*fem, 2.92*fem),
                      width: double.infinity,
                      height: 725.78*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff7bb0f1)),
                        color: Color(0xfff2f8fe),
                        borderRadius: BorderRadius.circular(5*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupp7i4g9a (P4LErjntxQ7hFKwdyxp7i4)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45.6*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // schedulefill0wght400grad0opsz2 (95:1357)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115.92*fem, 0*fem),
                                  width: 29.17*fem,
                                  height: 29.17*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-ruY.png',
                                    width: 29.17*fem,
                                    height: 29.17*fem,
                                  ),
                                ),
                                Center(
                                  // chartuHE (95:1356)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 120.23*fem, 0*fem),
                                    child: Text(
                                      'chart',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Radio Canada',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2*ffem/fem,
                                        letterSpacing: 0.4*fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // multiselectionAcU (95:1384)
                                  width: 27.5*fem,
                                  height: 30.87*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/multi-selection-BZc.png',
                                    width: 27.5*fem,
                                    height: 30.87*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame26SY (95:824)
                            width: double.infinity,
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroupzpqtEYk (P4LB8GBGRmAWCLABeozpQt
                                  width: size.width,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                                            width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-32-6Tk.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // fallingbehindG84 (95:837)
                                              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 16*fem),
                                              child: Text(
                                                'Falling Behind',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                        ]
                                      ),

                                      SizedBox(
                                        width: 33*fem,
                                      ),

                                      Column(
                                          children: [
                                            Container(
                                              // rectangle32Zb2 (95:825)
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-32-6Tk.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // fallingbehindG84 (95:837)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                              child: Text(
                                                'Valentine',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),

                                      SizedBox(
                                        width: 33*fem,
                                      ),
                                      Column(
                                          children: [
                                            Container(
                                              // rectangle32Zb2 (95:825)
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-34-BGe.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                              constraints: BoxConstraints (
                                                maxWidth: 100*fem,
                                              ),
                                              child: Text(
                                                'Washing Machine Heart',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupzpqtEYk (P4LB8GBGRmAWCLABeozpQt
                                  margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 0*fem),
                                  width: size.width,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Column(
                                          children: [
                                            Container(
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-35-afC.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // fallingbehindG84 (95:837)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                              child: Text(
                                                'Playboy',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                      SizedBox(
                                        width: 40*fem,
                                      ),
                                      Column(
                                          children: [
                                            Container(
                                              // rectangle32Zb2 (95:825)
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-36-Uh8.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // fallingbehindG84 (95:837)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                              child: Text(
                                                'Cà Phê',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                      SizedBox(
                                        width: 30*fem,
                                      ),
                                      Column(
                                          children: [
                                            Container(
                                              // rectangle32Zb2 (95:825)
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-37-JKc.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                              constraints: BoxConstraints (
                                                maxWidth: 100*fem,
                                              ),
                                              child: Text(
                                                'Never Gonna Give You Up',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupzpqtEYk (P4LB8GBGRmAWCLABeozpQt
                                  width: size.width,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-38-wmt.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // fallingbehindG84 (95:837)
                                              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 16*fem),
                                              child: Text(
                                                'idontwanna...',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),

                                      SizedBox(
                                        width: 40*fem,
                                      ),

                                      Column(
                                          children: [
                                            Container(
                                              // rectangle32Zb2 (95:825)
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-39-qGn.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // fallingbehindG84 (95:837)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                              child: Text(
                                                'Unforgiven',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),

                                      SizedBox(
                                        width: 30*fem,
                                      ),
                                      Column(
                                          children: [
                                            Container(
                                              // rectangle32Zb2 (95:825)
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-34-Zd4.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                              constraints: BoxConstraints (
                                                maxWidth: 100*fem,
                                              ),
                                              child: Text(
                                                'Look What You Made Me Do',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupzpqtEYk (P4LB8GBGRmAWCLABeozpQt
                                  width: size.width,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-37-bg-JVp.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // fallingbehindG84 (95:837)
                                              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                                              child: Text(
                                                'Rover',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),

                                      SizedBox(
                                        width: 43*fem,
                                      ),

                                      Column(
                                          children: [
                                            Container(
                                              // rectangle32Zb2 (95:825)
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-34-bg-YpA.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // fallingbehindG84 (95:837)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                              child: Text(
                                                'Hurt',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),

                                      SizedBox(
                                        width: 40*fem,
                                      ),
                                      Column(
                                          children: [
                                            Container(
                                              // rectangle32Zb2 (95:825)
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-35-bg-5AJ.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                              constraints: BoxConstraints (
                                                maxWidth: 100*fem,
                                              ),
                                              child: Text(
                                                'Ditto',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ]
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
          ],
        ),
      ),
    );
  }
}