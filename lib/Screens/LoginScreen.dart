import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kepu/Services/auth.dart';
import 'package:kepu/Services/consts.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';
//replaced this screen with coverScreen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: SafeArea(
              child: Container(
            color: Colors.white,
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.3,
                ),

                Lottie.asset(
                  "assets/kepu.json",
                  height: 200,
                  frameRate: FrameRate(30),
                ),
                Image(
                  image: new AssetImage("assets/kepu.png"),
                ),

                Center(
                  child: Container(
                      margin: const EdgeInsets.all(24),
                      width: double.infinity,
                      height: 72,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.googleLogin();
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                        label: Text(
                          sign_in_text,
                          style: const TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            backgroundColor: const Color(0xFFFBCD71)),
                      )),
                ),
                  Container(
                  margin: const EdgeInsets.fromLTRB(28, 0, 28, 24),
                  )
              ],
            ),
          ))),
    );
  }
}
