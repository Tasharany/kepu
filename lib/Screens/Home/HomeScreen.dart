import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:kepu/utils.dart';
import '../../Widgets/BottomNavBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homeDFp (60:244)
        width: double.infinity,
        height: 844*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // example1LbL (60:245)
              left: 11.0993041992*fem,
              top: 134.3833007812*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 3.5*fem, 0*fem, 0*fem),
                width: 367.72*fem,
                height: 350.61*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupiatrcYr (LDBUQ7nfBzHRpijwGkiatr)
                      margin: EdgeInsets.fromLTRB(12.67*fem, 0*fem, 194.72*fem, 10.17*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // moviewLE (60:249)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.67*fem, 0.58*fem),
                            width: 26.67*fem,
                            height: 20.67*fem,
                            child: Image.asset(
                              'assets/page-1/images/movie-oPg.png',
                              width: 26.67*fem,
                              height: 20.67*fem,
                            ),
                          ),
                          Text(
                            // theconjuringdyk (60:247)
                            'The Conjuring',
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
                        ],
                      ),
                    ),
                    Container(
                      // k1wzS (60:246)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                      width: 367.72*fem,
                      height: 206.93*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10*fem),
                        child: Image.asset(
                          'assets/page-1/images/k-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // pm3na (60:325)
                      margin: EdgeInsets.fromLTRB(0.16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        '12/12/2022 12:56PM',
                        style: SafeGoogleFont (
                          'Radio Canada',
                          fontSize: 10*ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.2*ffem/fem,
                          letterSpacing: 0.1*fem,
                          color: Color(0x7f000000),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Container(
                      // autogroupg8fuLmg (LDBUV2p8w4ahq5Wgjrg8fU)
                      margin: EdgeInsets.fromLTRB(10.16*fem, 0*fem, 10.52*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // theconjuringisapopularsupernat (60:248)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 23.8*fem, 0*fem),
                            constraints: BoxConstraints (
                              maxWidth: 298*fem,
                            ),
                            child: Text(
                              '"The Conjuring" is a popular supernatural horror film, the first installment in "The Conjuring Universe," a film series centered around paranormal investigators Ed and Lorraine Warren.',
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
                            // group6TUv (60:251)
                            padding: EdgeInsets.fromLTRB(2.1*fem, 3.27*fem, 2.1*fem, 2*fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // favoritefill0wght400grad0opsz2 (60:254)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.27*fem),
                                  width: 18.34*fem,
                                  height: 17.46*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/favoritefill0wght400grad0opsz24-1-8mx.png',
                                    width: 18.34*fem,
                                    height: 17.46*fem,
                                  ),
                                ),
                                Container(
                                  // schedulefill0wght400grad0opsz2 (60:252)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-Tf8.png',
                                    width: 21.04*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Container(
                                  // forumfill0wght400grad0opsz241k (60:256)
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/forumfill0wght400grad0opsz24-1-umc.png',
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
              // example2rvN (65:508)
              left: 11.2589111328*fem,
              top: 499.990234375*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 3.34*fem, 0*fem, 0*fem),
                width: 367.85*fem,
                height: 335.61*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogrouph2enjzA (LDBUybpsGTbrLgk6PVH2eN)
                      margin: EdgeInsets.fromLTRB(11.74*fem, 0*fem, 213.72*fem, 10.17*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // moviefN2 (65:512)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.15*fem, 0.82*fem),
                            width: 29.23*fem,
                            height: 21.33*fem,
                            child: Image.asset(
                              'assets/page-1/images/movie-hog.png',
                              width: 29.23*fem,
                              height: 21.33*fem,
                            ),
                          ),
                          Container(
                            // overcookedAZg (65:510)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.16*fem, 0*fem, 0*fem),
                            child: Text(
                              'Overcooked',
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
                      // k1GMp (65:509)
                      margin: EdgeInsets.fromLTRB(0.12*fem, 0*fem, 0*fem, 3.39*fem),
                      width: 367.72*fem,
                      height: 206.93*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10*fem),
                        child: Image.asset(
                          'assets/page-1/images/k-1-nrv.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // autogrouphlf4y1L (LDBV81kWvojoGPDYdShLf4)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.52*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // autogroupstanhT8 (LDBVDLvy6B7VEoiRiGStAn)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.8*fem, 3*fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // pmqJS (65:949)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.61*fem),
                                  child: Text(
                                    '12/12/2011 12:56PM',
                                    style: SafeGoogleFont (
                                      'Radio Canada',
                                      fontSize: 10*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2*ffem/fem,
                                      letterSpacing: 0.1*fem,
                                      color: Color(0x7f000000),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroup433gid8 (LDBVHkyH8VifggpDe7433g)
                                  margin: EdgeInsets.fromLTRB(10.28*fem, 0*fem, 0*fem, 0*fem),
                                  width: 310*fem,
                                  height: 72*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // exploreahiddenworlduncoverforg (65:511)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 310*fem,
                                            height: 72*fem,
                                            child: Text(
                                              'Explore a hidden world, uncover forgotten secrets, and face perilous challenges in "The Dive." Pre-order now for the ultimate undersea adventure!',
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
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group6kiE (65:514)
                            padding: EdgeInsets.fromLTRB(2.1*fem, 3.27*fem, 2.1*fem, 2*fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // favoritefill0wght400grad0opsz2 (65:517)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.27*fem),
                                  width: 18.34*fem,
                                  height: 17.46*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/favoritefill0wght400grad0opsz24-1-6yG.png',
                                    width: 18.34*fem,
                                    height: 17.46*fem,
                                  ),
                                ),
                                Container(
                                  // schedulefill0wght400grad0opsz2 (65:515)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-TxW.png',
                                    width: 21.04*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Container(
                                  // forumfill0wght400grad0opsz241M (65:519)
                                  width: 21.04*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/forumfill0wght400grad0opsz24-1-MMC.png',
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
              // whatsnew3jG (60:264)
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
                      color: Color(0xff125d9f),
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
                          backgroundColor: Colors.white,
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