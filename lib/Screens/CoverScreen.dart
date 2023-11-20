import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kepu/Services/auth.dart';
import 'package:kepu/Services/consts.dart';
import 'dart:ui';
import 'package:provider/provider.dart';


class CoverScreen extends StatelessWidget {
  const CoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // cover2VQ (1:2)
        width: double.infinity,
        height: 844*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [

            Positioned(
              // group28ELa (158:3)
              left: 46.5861816406*fem,
              top: 160.1968994141*fem,
              child: Align(
                child: SizedBox(
                  width: 294.83*fem,
                  height: 248.41*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-28.png',
                    width: 294.83*fem,
                    height: 248.41*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // loginbuttonjHL (10:152)
              left: 91.4855957031*fem,
              top: 450.83203125*fem,
              child: Container(
                width: 205.03*fem,
                height: 44.86*fem,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.black,
                    ),
                    label: Text(
                      sign_in_text,
                      style: const TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        backgroundColor: const Color(0xFFFBCD71)),
                  )),
                  ),

            Positioned(
              // marginsmjp (54:2)
              left: 11.0992431641*fem,
              top: 0.0038757324*fem,
              child: Container(
                width: 368.01*fem,
                height: 836.54*fem,
                child: Stack(
                  children: [

                    Positioned(
                      // autogroupuargwgE (LDC3pEwbKjnruKUDcjuaRg)
                      left: 68.1789550781*fem,
                      top: 0*fem,
                      child: Container(
                        width: 231.44*fem,
                        height: 836.54*fem,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
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