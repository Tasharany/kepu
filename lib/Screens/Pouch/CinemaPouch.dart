import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:kepu/utils.dart';

import '../../Widgets/BottomNavBar.dart';

class CinemaPouch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // pouchfDQY (66:1571)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7f7f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // pouchWuS (66:1572)
              left: 164.0400390625*fem,
              top: 49.3833007812*fem,
              child: Align(
                child: SizedBox(
                  width: 61*fem,
                  height: 24*fem,
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
              ),
            ),
            Positioned(
              // name78Y (66:1573)
              left: 0*fem,
              top: 93.3833007812*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33.08*fem),
                width: 390*fem,
                height: 793.7*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupgia8ZWL (P4KbZZSJ4kHm1D4oDnGia8)
                      margin: EdgeInsets.fromLTRB(8.13*fem, 0*fem, 0*fem, 0*fem),
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
                                      'assets/page-1/images/headphonesfill0wght400grad0opsz24-1.png',
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
                    Container(
                      // autogroupzewnLDa (P4Kc1YgzbvEk81zbFYZEwn)
                      padding: EdgeInsets.fromLTRB(18.06*fem, 18.4*fem, 21.27*fem, 2.92*fem),
                      width: double.infinity,
                      height: 725.78*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xffb86b8e)),
                        color: Color(0xfffffafd),
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
                            // autogroupvvsiXYx (P4KcExUKHoHeeVBct9VVsi)
                            margin: EdgeInsets.fromLTRB(5.85*fem, 0*fem, 0*fem, 45.6*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // schedulefill0wght400grad0opsz2 (66:1832)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 106.42*fem, 0*fem),
                                  width: 29.17*fem,
                                  height: 29.17*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/schedulefill0wght400grad0opsz24-1-8wC.png',
                                    width: 29.17*fem,
                                    height: 29.17*fem,
                                  ),
                                ),
                                Center(
                                  // cinemaGQ4 (66:1583)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 110.73*fem, 0*fem),
                                    child: Text(
                                      'cinema',
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
                                  // multiselection6P6 (66:1584)
                                  width: 27.5*fem,
                                  height: 30.87*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/multi-selection.png',
                                    width: 27.5*fem,
                                    height: 30.87*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame2nFv (66:1622)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                            width: 346.4*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupdcfe3he (P4KcirqVMXPLQnrR9RdCfe)
                                  margin: EdgeInsets.fromLTRB(13.45*fem, 0*fem, 6.95*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle32jqN (66:1623)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-32.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle33nHr (66:1624)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-33.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle34r2p (66:1625)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-34.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupth6cwa4 (P4KcuBscYRfyyz4sctth6c)
                                  margin: EdgeInsets.fromLTRB(2.99*fem, 0*fem, 7.01*fem, 5*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // dungeonsdragonshonoramongthiev (66:1635)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.95*fem, 0*fem),
                                        constraints: BoxConstraints (
                                          maxWidth: 103*fem,
                                        ),
                                        child: Text(
                                          'Dungeons & Dragons: Honor Among Thieves',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Radio Canada',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2142857143*ffem/fem,
                                            letterSpacing: 0.14*fem,
                                            color: Color(0xff000000),
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // corpsebrideGEx (66:1636)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.45*fem, 0*fem),
                                        child: Text(
                                          'Corpse Bride',
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
                                        // thebatmanLEp (66:1637)
                                        'The Batman',
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
                                  // autogroupgzlc39E (P4Kd4rGBTf3Aosiii1gzLc)
                                  margin: EdgeInsets.fromLTRB(13.45*fem, 0*fem, 6.95*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle35Z7a (66:1626)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-35.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle36GGt (66:1627)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-36.png',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle37P6c (66:1628)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-37.png',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupc5srKW4 (P4KdEgK8wodipbGDeDc5sr)
                                  margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 0*fem, 16*fem),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // monstersincTcG (66:1638)
                                        'Monsters, Inc.',
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
                                      SizedBox(
                                        width: 47.95*fem,
                                      ),
                                      Text(
                                        // suzumeNjE (66:1639)
                                        'Suzume',
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
                                      SizedBox(
                                        width: 47.95*fem,
                                      ),
                                      Container(
                                        // thorloveandthundertha (66:1640)
                                        constraints: BoxConstraints (
                                          maxWidth: 95*fem,
                                        ),
                                        child: Text(
                                          'Thor: Love and Thunder',
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
                                  // autogroupwbvtCCU (P4KdPg49bN5SuBMTLywBvt)
                                  margin: EdgeInsets.fromLTRB(13.45*fem, 0*fem, 6.95*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle38XEk (66:1629)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-38.png',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle39SsW (66:1630)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-39.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle40ZhE (66:1631)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-40.png',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogrouphtqjW6g (P4KdYaxxxTuVPMVs8ChtqJ)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 5*fem),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // harrypotterandthechamberofsecr (66:1641)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.45*fem, 0*fem),
                                        constraints: BoxConstraints (
                                          maxWidth: 108*fem,
                                        ),
                                        child: Text(
                                          'Harry Potter and the Chamber of Secrets',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Radio Canada',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2142857143*ffem/fem,
                                            letterSpacing: 0.14*fem,
                                            color: Color(0xff000000),
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // titanicLLc (66:1642)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 79.95*fem, 0*fem),
                                        child: Text(
                                          'Titanic',
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
                                        // shrekFTa (66:1643)
                                        'Shrek',
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
                                  // autogroupf1f2Ppg (P4KdgLF4M97yZkQhyof1f2)
                                  margin: EdgeInsets.fromLTRB(13.45*fem, 0*fem, 6.95*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle41jNk (66:1632)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-41.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle42TJk (66:1633)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-42.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 43*fem,
                                      ),
                                      Container(
                                        // rectangle43BVe (66:1634)
                                        width: 80*fem,
                                        height: 110*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-43.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroup3jl8Wnp (P4KdozgxTMin9jNius3jL8)
                                  margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // movieqq6 (66:1644)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        child: Text(
                                          'Scary Movie',
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
                                        // movieZWC (66:1645)
                                        margin: EdgeInsets.fromLTRB(60*fem, 0*fem, 30*fem, 0*fem),
                                        child: Text(
                                          'Sing 2',
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
                                        // movieqq6 (66:1644)
                                        margin: EdgeInsets.fromLTRB(40*fem, 0*fem, 0*fem, 0*fem),
                                        child: Text(
                                          'Turning Red',
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