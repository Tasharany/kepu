import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';

class PocketPouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // pouchfk6Y (95:124)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // nameceY (95:126)
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
                      // autogrouppkvaER2 (P4KwHptzYt9v6wKynpPkVA)
                      padding: EdgeInsets.fromLTRB(8.13*fem, 0*fem, 8.13*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // pouch7Up (95:125)
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
                            // autogroupqgsnvx4 (P4KtUQbHnZ6ZzvgrXGQgsN)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88.11*fem, 0*fem),
                            height: 34.83*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupbqhazBE (P4KtcVCAK4mnYyP153bQHa)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.48*fem, 0*fem),
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
                                    // vectorafE (95:133)
                                    child: SizedBox(
                                      width: 23.22*fem,
                                      height: 18.58*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-76k.png',
                                        width: 23.22*fem,
                                        height: 18.58*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupczauTU8 (P4KtguEUMPNxzrUnztCZAU)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.48*fem, 0*fem),
                                  padding: EdgeInsets.fromLTRB(33.73*fem, 8.99*fem, 33.7*fem, 7.27*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff6ca68c)),
                                    color: Color(0xfff5fbf8),
                                    borderRadius: BorderRadius.only (
                                      topLeft: Radius.circular(5*fem),
                                      topRight: Radius.circular(5*fem),
                                    ),
                                  ),
                                  child: Center(
                                    // stadiacontrollerfill0wght400gr (95:134)
                                    child: SizedBox(
                                      width: 25.46*fem,
                                      height: 18.58*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/stadiacontrollerfill0wght400grad0opsz24-1-xzY.png',
                                        width: 25.46*fem,
                                        height: 18.58*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogrouptv12iHa (P4KtkjTRQVgNHqxoTutv12)
                                  padding: EdgeInsets.fromLTRB(37.45*fem, 8.42*fem, 37.44*fem, 8.42*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff7bb0f1)),
                                    color: Color(0x337bb0f1),
                                    borderRadius: BorderRadius.only (
                                      topLeft: Radius.circular(5*fem),
                                      topRight: Radius.circular(5*fem),
                                    ),
                                  ),
                                  child: Center(
                                    // headphonesfill0wght400grad0ops (95:129)
                                    child: SizedBox(
                                      width: 18*fem,
                                      height: 18*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/headphonesfill0wght400grad0opsz24-1-YEp.png',
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
                      // autogroupe244Qpc (P4KtujCS4486NS43AgE244)
                      padding: EdgeInsets.fromLTRB(15.55*fem, 18.4*fem, 20.04*fem, 2.92*fem),
                      width: double.infinity,
                      height: 725.78*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff6ca68c)),
                        color: Color(0xfff5fbf8),
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
                            // autogrouprlkenqA (P4Ku3iy7J7BdL4oMnurLKe)
                            margin: EdgeInsets.fromLTRB(7.13*fem, 0*fem, 0*fem, 45.6*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // schedulefill0wght400grad0opsz2 (95:137)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 108.42*fem, 0*fem),
                                  width: 29.17*fem,
                                  height: 29.17*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-RNk.png',
                                    width: 29.17*fem,
                                    height: 29.17*fem,
                                  ),
                                ),
                                Center(
                                  // pocketg3N (95:136)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 112.73*fem, 0*fem),
                                    child: Text(
                                      'pocket',
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
                                  // multiselectionJaY (95:164)
                                  width: 27.5*fem,
                                  height: 30.87*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/multi-selection-zR2.png',
                                    width: 27.5*fem,
                                    height: 30.87*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame2NqJ (95:139)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogrouprdxx5Up (P4KuXYW65NfdVxXL8eRdxx)
                                  margin: EdgeInsets.fromLTRB(15.96*fem, 0*fem, 12.45*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle32kqr (95:140)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-32-YqJ.png',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle33QvQ (95:141)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-33-6oN.png',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle34UvG (95:142)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-34-QbN.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupiijwB3z (P4Kuid1xpQVRQsFDv1iijW)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.51*fem, 16*fem),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // animalcrossingnewhorizonsGLL (95:152)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.95*fem, 0*fem),
                                        constraints: BoxConstraints (
                                          maxWidth: 114*fem,
                                        ),
                                        child: Text(
                                          'Animal Crossing: New Horizons',
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
                                        // stardewvalleysL8 (95:153)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 41.95*fem, 0*fem),
                                        child: Text(
                                          'Stardew Valley',
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
                                        // minecraftKC8 (95:154)
                                        'Minecraft',
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
                                  // autogroupdpgkcS8 (P4KutT4vJZ5yRanirDdpGk)
                                  margin: EdgeInsets.fromLTRB(15.96*fem, 0*fem, 12.45*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle35gRz (95:143)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-35-vsN.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle36YUC (95:144)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-36-VvL.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle3716t (95:145)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-37-ZtQ.png',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupkv4tgD2 (P4Kv3rxuNQc7UEc6Ahkv4t)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.99*fem, 36*fem),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // deadbydaylightNbe (95:155)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50.95*fem, 0*fem),
                                        child: Text(
                                          'Dead By Daylight',
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
                                        // rustQoE (95:156)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73.45*fem, 0*fem),
                                        child: Text(
                                          'Rust',
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
                                        // transistorUHJ (95:157)
                                        'Transistor',
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
                                  // autogroupw2dimnC (P4KvC2PyBNu1chF4e2W2di)
                                  margin: EdgeInsets.fromLTRB(15.96*fem, 0*fem, 12.45*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle38eb6 (95:146)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-38-qFS.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle39XPz (95:147)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-39-xbE.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle40NvQ (95:148)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-40-2k4.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupgjy8Tgx (P4KvLwJnYUj46sPURFGjY8)
                                  margin: EdgeInsets.fromLTRB(7.51*fem, 0*fem, 0*fem, 16*fem),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // phasmaphobia9Zn (95:158)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.95*fem, 0*fem),
                                        child: Text(
                                          'Phasmaphobia',
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
                                        // hogwartslegacy2mz (95:159)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.95*fem, 0*fem),
                                        child: Text(
                                          'Hogwarts Legacy',
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
                                        // detroitbecomehuman5VN (95:160)
                                        constraints: BoxConstraints (
                                          maxWidth: 106*fem,
                                        ),
                                        child: Text(
                                          'Detroit: Become Human',
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
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogrouptsxlKuW (P4KvV1uf4zQGev5cy2TSxL)
                                  margin: EdgeInsets.fromLTRB(15.96*fem, 0*fem, 12.45*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle41oJt (95:149)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-41-3Pa.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle42rY4 (95:150)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-42-mEk.png',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle43Wcc (95:151)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-43-xPv.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupsa7ebPA (P4KvdWfW1o9uB2Vu8XSA7e)
                                  margin: EdgeInsets.fromLTRB(37.1*fem, 0*fem, 32.41*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // movieftp (95:161)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 82.45*fem, 0*fem),
                                        child: Text(
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
                                      ),
                                      Container(
                                        // movieXw2 (95:162)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 82.45*fem, 0*fem),
                                        child: Text(
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
                                      ),
                                      Text(
                                        // moviezZi (95:163)
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
            ),
            Positioned(
              // bottomhubHYp (95:168)
              left: 0*fem,
              top: 84*fem,
              child: Align(
                child: SizedBox(
                  width: 675*fem,
                  height: 760*fem,
                  child: Image.asset(
                    'assets/page-1/images/bottom-hub-wS4.png',
                    width: 675*fem,
                    height: 760*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // marginsi8L (95:189)
              left: 11.0991210938*fem,
              top: 0.00390625*fem,
              child: Container(
                width: 368.01*fem,
                height: 836.54*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // wifimcQ (95:190)
                      left: 329.2163085938*fem,
                      top: 7.0717773438*fem,
                      child: Align(
                        child: SizedBox(
                          width: 14*fem,
                          height: 9.74*fem,
                          child: Image.asset(
                            'assets/page-1/images/wifi-2xU.png',
                            width: 14*fem,
                            height: 9.74*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // signalaJx (95:192)
                      left: 312*fem,
                      top: 6.3291015625*fem,
                      child: Align(
                        child: SizedBox(
                          width: 13*fem,
                          height: 10.9*fem,
                          child: Image.asset(
                            'assets/page-1/images/signal-cWG.png',
                            width: 13*fem,
                            height: 10.9*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ampDJ (95:193)
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
                      // batteryp6p (95:194)
                      left: 348.2163085938*fem,
                      top: 9.0024414062*fem,
                      child: Align(
                        child: SizedBox(
                          width: 19.79*fem,
                          height: 8.3*fem,
                          child: Image.asset(
                            'assets/page-1/images/battery-1qv.png',
                            width: 19.79*fem,
                            height: 8.3*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupy6jnpm2 (P4KxM3dz8ALfCP7HKjy6jN)
                      left: 68.1789550781*fem,
                      top: 0*fem,
                      child: Container(
                        width: 231.44*fem,
                        height: 836.54*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // applethingi5i (95:198)
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
                              // applebuttonNAG (95:199)
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