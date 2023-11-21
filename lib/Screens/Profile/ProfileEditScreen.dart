import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';
import '../../Widgets/BottomNavBar.dart';

class ProfileEditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // profileeditUsE (66:2950)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle55yoz (66:2951)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 391*fem,
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
              // usernameSxU (66:2952)
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
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40*fem,
              child: TextButton(
                onPressed: () {
                  HapticFeedback.mediumImpact();
                  GoRouter.of(context).go('/profile');
                },
                child: Align(
                  child: Image.asset(
                    'assets/page-1/images/arrowbackfill0wght400grad0opsz24-2.png',
                    width: 16*fem,
                    height: 16*fem,
                  ),
                ),
              ),


            ),
            Positioned(
              // ellipse91PJ (66:2954)
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
              // quitdontquitnoodlesX6k (66:2962)
              left: 104*fem,
              top: 352.666015625*fem,
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
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle46CCt (66:2963)
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
              // iconsHk8 (66:2964)
              left: 61.2915039062*fem,
              top: 489.55859375*fem,
              child: Container(
                width: 267.42*fem,
                height: 214.23*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // group181w2 (66:2971)
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
                      // group17iqS (66:2965)
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
                      // group163cp (66:2977)
                      left: 0*fem,
                      top: 0*fem,
                      child: Container(
                        width: 267.42*fem,
                        height: 214.23*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // moviexzg (66:2981)
                              margin: EdgeInsets.fromLTRB(0*fem, 18*fem, 0*fem, 0*fem),
                              width: 73*fem,
                              height: 34*fem,
                              child: Image.asset(
                                'assets/page-1/images/movie-QX4.png',
                                width: 73*fem,
                                height: 34*fem,
                              ),
                            ),
                            Container(
                              // autogroupgm325Jc (P4LZwgzSJxN2Y6ieyEgM32)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                              width: 64*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle34BMe (66:2978)
                                    width: 64*fem,
                                    height: 70*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/Rectangle_34_round.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // rectangle49h56 (95:3)
                                    width: 64*fem,
                                    height: 70*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/Rectangle_49_round.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // autogroupxgqt27N (P4La5BmwrFjTwFo24CxGQt)
                                    padding: EdgeInsets.fromLTRB(22.5*fem, 25.5*fem, 22.5*fem, 22.5*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Center(
                                      // addfill0wght400grad0opsz246M9e (66:2987)
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
                              // autogroupecjyTyN (P4LaBrFWYxx5QHR7ujeCJY)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.42*fem, 0*fem),
                              width: 64*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle47o1e (66:2979)
                                    width: 64*fem,
                                    height: 70*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/Rectangle_47_round.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // autogroup2uyeWgk (P4LaKWhQfBYszGP8qo2uye)
                                    padding: EdgeInsets.fromLTRB(22.5*fem, 23.38*fem, 22.5*fem, 27.62*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Center(
                                      // addfill0wght400grad0opsz244SqJ (66:2983)
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
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // autogroup45nlxYk (P4LaP6Rmrv1EW22fYC45NL)
                                    padding: EdgeInsets.fromLTRB(22.92*fem, 25.5*fem, 22.08*fem, 22.5*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Center(
                                      // addfill0wght400grad0opsz247gDr (66:2989)
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
                              // autogrouptptpCCC (P4LaWg3UgfzMVb3rYhtPtp)
                              width: 64*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle48jT2 (66:2980)
                                    width: 64*fem,
                                    height: 70*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/Rectangle_48_round.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // autogroupaknuqFA (P4LadLX3PPCxxcfxQEaKnU)
                                    padding: EdgeInsets.fromLTRB(22.5*fem, 23.38*fem, 22.5*fem, 27.62*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Center(
                                      // addfill0wght400grad0opsz245xqa (66:2985)
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
                                  SizedBox(
                                    height: 2.12*fem,
                                  ),
                                  Container(
                                    // autogrouppuvgsBr (P4LahLQP1QjjSS3ciMPUvG)
                                    padding: EdgeInsets.fromLTRB(22.08*fem, 25.5*fem, 22.92*fem, 22.5*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Center(
                                      // addfill0wght400grad0opsz248QBn (66:2991)
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // favoritefill0wght400grad0opsz2 (66:2993)
              left: 185.6235351562*fem,
              top: 419.2075195312*fem,
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
              // marginsDf2 (66:2995)
              left: 12.0991210938*fem,
              top: 0.00390625*fem,
              child: Container(
                width: 368.01*fem,
                height: 836.54*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // autogroupdz4y92t (P4LbEEgZHeyzZbkADDdZ4Y)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28.43*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                    ),
                    Container(
                      // logoutfill0wght400grad0opsz241 (171:2)
                      margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 1.16*fem, 84.67*fem),
                      width: 24*fem,
                      height: 23.25*fem,
                      child: Image.asset(
                        'assets/page-1/images/logout_FILL0_wght400_GRAD0_opsz24-1.png',
                        width: 24*fem,
                        height: 23.25*fem,
                      ),
                    ),
                    Container(
                      // addaphotofill0wght400grad0opsz (66:3029)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 152.94*fem, 0*fem),
                      width: 62.33*fem,
                      height: 55.83*fem,
                      child: Image.asset(
                        'assets/page-1/images/addaphotofill0wght400grad0opsz24-2.png',
                        width: 62.33*fem,
                        height: 55.83*fem,
                      ),
                    ),
                    Container(
                      // autogroupwdkj2Xv (P4LbS9WNsGxcQdvKE2WdKJ)
                      padding: EdgeInsets.fromLTRB(45.73*fem, 132.85*fem, 45.85*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle56A8L (66:3031)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 453.43*fem),
                            width: double.infinity,
                            height: 31.31*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
                              border: Border.all(color: Color(0xfffbcd71)),
                            ),
                          ),
                          Container(
                            // applebutton5m6 (66:3005)
                            margin: EdgeInsets.fromLTRB(75.84*fem, 0*fem, 76.89*fem, 0*fem),
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
              // bottomhub2f4 (60:305)
              left: 0*fem,
              top: 746*fem,
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