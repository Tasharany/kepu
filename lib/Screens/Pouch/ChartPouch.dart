import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';

class ChartPouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
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
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88.11*fem, 0*fem),
                            height: 34.83*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupfyye7YQ (P4LERfgLYGwDf4Qw7BfyyE)
                                  padding: EdgeInsets.fromLTRB(34.83*fem, 8.13*fem, 34.83*fem, 8.13*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xffb86b8e)),
                                    color: Color(0x33ffcde4),
                                    borderRadius: BorderRadius.only (
                                      topLeft: Radius.circular(5*fem),
                                      topRight: Radius.circular(5*fem),
                                    ),
                                  ),
                                  child: Center(
                                    // vectorNjE (95:1353)
                                    child: SizedBox(
                                      width: 23.22*fem,
                                      height: 18.58*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-rSQ.png',
                                        width: 23.22*fem,
                                        height: 18.58*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.48*fem,
                                ),
                                Container(
                                  // autogroupalyt2Yt (P4LEVv4G1gK2v7d5BwALYt)
                                  padding: EdgeInsets.fromLTRB(33.73*fem, 8.99*fem, 33.7*fem, 7.27*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff6ca68c)),
                                    color: Color(0x3393d5b8),
                                    borderRadius: BorderRadius.only (
                                      topLeft: Radius.circular(5*fem),
                                      topRight: Radius.circular(5*fem),
                                    ),
                                  ),
                                  child: Center(
                                    // stadiacontrollerfill0wght400gr (95:1354)
                                    child: SizedBox(
                                      width: 25.46*fem,
                                      height: 18.58*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/stadiacontrollerfill0wght400grad0opsz24-1-inx.png',
                                        width: 25.46*fem,
                                        height: 18.58*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.48*fem,
                                ),
                                Container(
                                  // autogroupjjepycY (P4LEZfT1nKzkchAFjRJJEp)
                                  padding: EdgeInsets.fromLTRB(37.45*fem, 8.42*fem, 37.44*fem, 8.42*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff7bb0f1)),
                                    color: Color(0xfff2f8fe),
                                    borderRadius: BorderRadius.only (
                                      topLeft: Radius.circular(5*fem),
                                      topRight: Radius.circular(5*fem),
                                    ),
                                  ),
                                  child: Center(
                                    // headphonesfill0wght400grad0ops (95:1348)
                                    child: SizedBox(
                                      width: 18*fem,
                                      height: 18*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/headphonesfill0wght400grad0opsz24-1-zha.png',
                                        width: 18*fem,
                                        height: 18*fem,
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
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-sb2.png',
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
                                    'assets/page-1/images/multi-selection-y7z.png',
                                    width: 27.5*fem,
                                    height: 30.87*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame2GvQ (95:1359)
                            margin: EdgeInsets.fromLTRB(7.6*fem, 0*fem, 11.21*fem, 0*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupsup2zrQ (P4LFCjDb4XmXeQowYYsuP2)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle32YN8 (95:1360)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-32-urt.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle33eg4 (95:1361)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-33-QJp.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle34AuJ (95:1362)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-34-obr.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroup77dwhuE (P4LFqHzzdyrD7enfpR77dW)
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // autogroup6d8pepU (P4LFMZJD9AytYB1XQE6D8p)
                                        margin: EdgeInsets.fromLTRB(24.04*fem, 0*fem, 0*fem, 36*fem),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // lostPGG (95:1372)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65.45*fem, 0*fem),
                                              child: Text(
                                                'Lost!',
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
                                            Container(
                                              // blankspaceUoW (95:1373)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48.45*fem, 0*fem),
                                              child: Text(
                                                'Blank Space',
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
                                            Text(
                                              // endgameBhv (95:1374)
                                              'End Game',
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
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogrouptlulK3S (P4LFUUGMhG3YnSU72PTLUL)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 123*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // rectangle35eLc (95:1363)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43*fem, 0*fem),
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-35-joS.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // rectangle36mAL (95:1364)
                                              width: 80*fem,
                                              height: 110*fem,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(5*fem),
                                                child: Image.asset(
                                                  'assets/page-1/images/rectangle-36-sdn.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupmh8gW7v (P4LFZtH1962vMGup2kmH8g)
                                        margin: EdgeInsets.fromLTRB(15.05*fem, 0*fem, 148*fem, 312*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // nobodydiL (95:1375)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 81.95*fem, 0*fem),
                                              child: Text(
                                                'Nobody',
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
                                            Text(
                                              // dnawU8 (95:1376)
                                              'DNA',
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
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupn1auGWQ (P4LFgJFyzRQV34hS7en1aU)
                                        margin: EdgeInsets.fromLTRB(21.14*fem, 0*fem, 19.96*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              // movieQ6p (95:1381)
                                              'movie',
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
                                            SizedBox(
                                              width: 82.45*fem,
                                            ),
                                            Text(
                                              // movieJxt (95:1382)
                                              'movie',
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
                                            SizedBox(
                                              width: 82.45*fem,
                                            ),
                                            Text(
                                              // movieE5r (95:1383)
                                              'movie',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // bottomhubMwA (95:1388)
              left: 0*fem,
              top: 84*fem,
              child: Align(
                child: SizedBox(
                  width: 675*fem,
                  height: 760*fem,
                  child: Image.asset(
                    'assets/page-1/images/bottom-hub-2bE.png',
                    width: 675*fem,
                    height: 760*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // marginsrN8 (95:1409)
              left: 11.0991210938*fem,
              top: 0.00390625*fem,
              child: Container(
                width: 368.01*fem,
                height: 836.54*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // wifiZ1e (95:1410)
                      left: 329.2163085938*fem,
                      top: 7.0717773438*fem,
                      child: Align(
                        child: SizedBox(
                          width: 14*fem,
                          height: 9.74*fem,
                          child: Image.asset(
                            'assets/page-1/images/wifi-JLL.png',
                            width: 14*fem,
                            height: 9.74*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // signalFQG (95:1412)
                      left: 312*fem,
                      top: 6.3291015625*fem,
                      child: Align(
                        child: SizedBox(
                          width: 13*fem,
                          height: 10.9*fem,
                          child: Image.asset(
                            'assets/page-1/images/signal-CSp.png',
                            width: 13*fem,
                            height: 10.9*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // amNDz (95:1413)
                      left: 0*fem,
                      top: 6.3291015625*fem,
                      child: Align(
                        child: SizedBox(
                          width: 54*fem,
                          height: 15*fem,
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
                      ),
                    ),
                    Positioned(
                      // batteryeSQ (95:1414)
                      left: 348.2163085938*fem,
                      top: 9.0024414062*fem,
                      child: Align(
                        child: SizedBox(
                          width: 19.79*fem,
                          height: 8.3*fem,
                          child: Image.asset(
                            'assets/page-1/images/battery-T9e.png',
                            width: 19.79*fem,
                            height: 8.3*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupf3b2kVS (P4LHF5z3JbzZm544Njf3b2)
                      left: 68.1787109375*fem,
                      top: 0*fem,
                      child: Container(
                        width: 231.44*fem,
                        height: 836.54*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // applethingsKA (95:1418)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 810.76*fem),
                              width: double.infinity,
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
                              // applebuttonNWp (95:1419)
                              margin: EdgeInsets.fromLTRB(53.39*fem, 0*fem, 54.36*fem, 0*fem),
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}