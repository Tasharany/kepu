import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';

import '../../Widgets/BottomNavBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // profileVjJ (66:2748)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle55pWg (66:2918)
              left: 1*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 324.16*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xff3ea4de),
                      borderRadius: BorderRadius.only (
                        bottomRight: Radius.circular(10*fem),
                        bottomLeft: Radius.circular(10*fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // usernameic4 (66:2749)
              left: 137.0400390625*fem,
              top: 49.3833007812*fem,
              child: Align(
                child: SizedBox(
                  width: 118*fem,
                  height: 24*fem,
                  child: Text(
                    '@username',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Radio Canada',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2*ffem/fem,
                      letterSpacing: 0.2*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // logoutfill0wght400grad0opsz241 (184:6)
              left: 354.9482421875*fem,
              top: 49.7583007812*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 23.25*fem,
                  child: Image.asset(
                    'assets/page-1/images/logoutfill0wght400grad0opsz24-1.png',
                    width: 24*fem,
                    height: 23.25*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse978Q (66:2795)
              left: 131*fem,
              top: 123.3833007812*fem,
              child: Align(
                child: SizedBox(
                  width: 130*fem,
                  height: 130*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(65*fem),
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group15dMe (66:2807)
              left: 88.5400390625*fem,
              top: 268.3833007812*fem,
              child: Container(
                width: 215*fem,
                height: 30*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(4*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // loginbuttonU7N (66:2797)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                      width: 100*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xfffbcd71)),
                        color: Color(0xfff7f7f7),
                        borderRadius: BorderRadius.circular(4*fem),
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            'edit',
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
                    Container(
                      // loginbuttoniXW (66:2801)
                      width: 100*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffbcd71),
                        borderRadius: BorderRadius.circular(4*fem),
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            'settings',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // quitdontquitnoodlesPtY (66:2796)
              left: 104*fem,
              top: 352.6657714844*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 184*fem,
                    height: 20*fem,
                    child: Text(
                      '“quit, don’t quit, noodles”',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Radio Canada',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle46UQC (66:2881)
              left: 42.740234375*fem,
              top: 401.1708984375*fem,
              child: Align(
                child: SizedBox(
                  width: 306.6*fem,
                  height: 54.77*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10*fem),
                      color: Color(0x333ea4de),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iconsnfn (95:21)
              left: 61.2915039062*fem,
              top: 489.55859375*fem,
              child: Container(
                width: 267.42*fem,
                height: 214.23*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // group18v1J (95:22)
                      left: 0*fem,
                      top: 158*fem,
                      child: Align(
                        child: SizedBox(
                          width: 73*fem,
                          height: 34*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-18.png',
                            width: 73*fem,
                            height: 34*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group1735v (95:25)
                      left: 0*fem,
                      top: 88*fem,
                      child: Align(
                        child: SizedBox(
                          width: 73*fem,
                          height: 34*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-17.png',
                            width: 73*fem,
                            height: 34*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group169ek (95:28)
                      left: 0*fem,
                      top: 0*fem,
                      child: Container(
                        width: 267.42*fem,
                        height: 214.23*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // movie5HW (95:38)
                              margin: EdgeInsets.fromLTRB(0*fem, 18*fem, 0*fem, 0*fem),
                              width: 73*fem,
                              height: 34*fem,
                              child: Image.asset(
                                'assets/page-1/images/movie-5pp.png',
                                width: 73*fem,
                                height: 34*fem,
                              ),
                            ),
                            Container(
                              // autogroupj6qcnhi (P4LY5k6JYF3Kb3dpY4j6Qc)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                              width: 64*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle34KBr (95:30)
                                    width: 64*fem,
                                    height: 70*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-34-CjN.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // rectangle49S1a (95:29)
                                    width: 64*fem,
                                    height: 70*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-49.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // autogroupscdr9Rn (P4LYDA3co5o5PnmMhVScdr)
                                    padding: EdgeInsets.fromLTRB(22.5*fem, 25.5*fem, 22.5*fem, 25.5*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Center(
                                      // addfill0wght400grad0opsz246scg (95:42)
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/addfill0wght400grad0opsz24-6.png',
                                          width: 19*fem,
                                          height: 19*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupa8s6zSQ (P4LYLZzw3vYqCXttrvA8s6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.42*fem, 0*fem),
                              width: 64*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle477mv (95:31)
                                    width: 64*fem,
                                    height: 70*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-47.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // autogroupassn3Qg (P4LYUyvaiGgn8ENM6saSsn)
                                    padding: EdgeInsets.fromLTRB(22.5*fem, 23.38*fem, 22.5*fem, 27.62*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Center(
                                      // addfill0wght400grad0opsz244Ztp (95:40)
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/addfill0wght400grad0opsz24-4.png',
                                          width: 19*fem,
                                          height: 19*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // autogroupa1r6sec (P4LYYeV9CTkpEPxhipA1R6)
                                    padding: EdgeInsets.fromLTRB(22.92*fem, 25.5*fem, 22.08*fem, 25.5*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Center(
                                      // addfill0wght400grad0opsz247Cwn (95:44)
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/addfill0wght400grad0opsz24-7.png',
                                          width: 19*fem,
                                          height: 19*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupnkggWha (P4LYgeFpSWpMC2i2M3nKgg)
                              width: 64*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle48rFe (95:32)
                                    width: 64*fem,
                                    height: 70*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-48.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // autogrouphrapNjn (P4LYoe4AH4Vh2i7RtkhrAp)
                                    padding: EdgeInsets.fromLTRB(22.5*fem, 23.38*fem, 22.5*fem, 27.62*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Center(
                                      // addfill0wght400grad0opsz245uji (95:48)
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/addfill0wght400grad0opsz24-5.png',
                                          width: 19*fem,
                                          height: 19*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // autogroupkbu6p5z (P4LYsyGH2vVBtBGPu3kbu6)
                                    padding: EdgeInsets.fromLTRB(22.08*fem, 25.5*fem, 22.92*fem, 25.5*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Center(
                                      // addfill0wght400grad0opsz248Yng (95:46)
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/addfill0wght400grad0opsz24-8.png',
                                          width: 19*fem,
                                          height: 19*fem,
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
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // favoritefill0wght400grad0opsz2 (66:2895)
              left: 185.6235351562*fem,
              top: 419.2077636719*fem,
              child: Align(
                child: SizedBox(
                  width: 20.83*fem,
                  height: 18.35*fem,
                  child: Image.asset(
                    'assets/page-1/images/favoritefill0wght400grad0opsz24-13.png',
                    width: 20.83*fem,
                    height: 18.35*fem,
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
                    currentIndex: 4,
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

