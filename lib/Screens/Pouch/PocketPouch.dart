import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';

import '../../Widgets/BottomNavBar.dart';

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
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Container(
                            // autogroupqgsnvx4 (P4KtUQbHnZ6ZzvgrXGQgsN)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
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
                      // autogroupe244Qpc (P4KtujCS4486NS43AgE244)
                      padding: EdgeInsets.fromLTRB(14*fem, 18.4*fem, 20.04*fem, 2.92*fem),
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
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-sJS.png',
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
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // multiselectionJaY (95:164)
                                  width: 27.5*fem,
                                  height: 30.87*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/multi-selection-Cjc.png',
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
                                  margin: EdgeInsets.fromLTRB(12.45*fem, 0*fem, 12.45*fem, 0*fem),
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
                                            'assets/page-1/images/rectangle-37-bg-Npz.png',
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
                                            'assets/page-1/images/rectangle-35-bg-3iJ.png',
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
                                            'assets/page-1/images/rectangle-34-S2N.png',
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
                                            decoration: TextDecoration.none,
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
                                            decoration: TextDecoration.none,
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
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupdpgkcS8 (P4KutT4vJZ5yRanirDdpGk)
                                  margin: EdgeInsets.fromLTRB(12.45*fem, 0*fem, 12.45*fem, 0*fem),
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
                                            'assets/page-1/images/rectangle-35-vQ2.png',
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
                                            'assets/page-1/images/rectangle-36-5QW.png',
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
                                            'assets/page-1/images/rectangle-37-DtE.png',
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
                                            decoration: TextDecoration.none,
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
                                            decoration: TextDecoration.none,
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
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupw2dimnC (P4KvC2PyBNu1chF4e2W2di)
                                  margin: EdgeInsets.fromLTRB(12.45*fem, 0*fem, 12.45*fem, 0*fem),
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
                                            'assets/page-1/images/rectangle-38-tdQ.png',
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
                                            'assets/page-1/images/rectangle-39-CNW.png',
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
                                            'assets/page-1/images/rectangle-40-5Rt.png',
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
                                            decoration: TextDecoration.none,
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
                                            decoration: TextDecoration.none,
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
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogrouptsxlKuW (P4KvV1uf4zQGev5cy2TSxL)
                                  margin: EdgeInsets.fromLTRB(12.45*fem, 0*fem, 12.45*fem, 0*fem),
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
                                            'assets/page-1/images/rectangle-41-bg-J3t.png',
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
                                            'assets/page-1/images/rectangle-34-cUJ.png',
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
                                            'assets/page-1/images/rectangle-37-bg-Ghp.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupsa7ebPA (P4KvdWfW1o9uB2Vu8XSA7e)
                                  margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // movieftp (95:161)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.95*fem, 0*fem),
                                        child: Text(
                                          'Elden Ring',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Radio Canada',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.4285714286*ffem/fem,
                                            letterSpacing: 0.14*fem,
                                            color: Color(0xff000000),
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // movieXw2 (95:162)
                                        margin: EdgeInsets.fromLTRB(45*fem, 0*fem, 16.95*fem, 0*fem),
                                        child: Text(
                                          'Undertale',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Radio Canada',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.4285714286*ffem/fem,
                                            letterSpacing: 0.14*fem,
                                            color: Color(0xff000000),
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // movieXw2 (95:162)
                                        margin: EdgeInsets.fromLTRB(40*fem, 0*fem, 16.95*fem, 0*fem),
                                        child: Text(
                                          'The Room',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Radio Canada',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.4285714286*ffem/fem,
                                            letterSpacing: 0.14*fem,
                                            color: Color(0xff000000),
                                            decoration: TextDecoration.none,
                                        ),
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