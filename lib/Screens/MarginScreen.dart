import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kepu/utils.dart';

class MarginScreen extends StatelessWidget {
  const MarginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390.4863891602;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // marginwSa (10:156)
        width: double.infinity,
        height: 844*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // bottomhubtMp (60:468)
              left: 0.4863891602*fem,
              top: 300*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 97*fem,
                  child: Image.asset(
                    'assets/page-1/images/bottom-hub-fg6.png',
                    width: 390*fem,
                    height: 97*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // marginsPJa (60:489)
              left: 10.5856323242*fem,
              top: 0.0038757324*fem,
              child: Container(
                width: 368.01*fem,
                height: 836.54*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // wifiW8J (60:490)
                      left: 329.2163085938*fem,
                      top: 7.0717468262*fem,
                      child: Align(
                        child: SizedBox(
                          width: 14*fem,
                          height: 9.74*fem,
                          child: Image.asset(
                            'assets/page-1/images/wifi-9uU.png',
                            width: 14*fem,
                            height: 9.74*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // signalpPt (60:492)
                      left: 312*fem,
                      top: 6.3291931152*fem,
                      child: Align(
                        child: SizedBox(
                          width: 13*fem,
                          height: 10.9*fem,
                          child: Image.asset(
                            'assets/page-1/images/signal-cnE.png',
                            width: 13*fem,
                            height: 10.9*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // amwDc (60:493)
                      left: 0*fem,
                      top: 6.3291931152*fem,
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
                      // batteryRPg (60:494)
                      left: 348.2163085938*fem,
                      top: 9.0022888184*fem,
                      child: Align(
                        child: SizedBox(
                          width: 19.79*fem,
                          height: 8.3*fem,
                          child: Image.asset(
                            'assets/page-1/images/battery-LYA.png',
                            width: 19.79*fem,
                            height: 8.3*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupqatcw78 (LDC4TohLJhFjVWnry8qaTc)
                      left: 68.1789550781*fem,
                      top: 0*fem,
                      child: Container(
                        width: 231.44*fem,
                        height: 836.54*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // applethingqyC (60:498)
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
                              // applebuttonMge (60:499)
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