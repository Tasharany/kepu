import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kepu/Services/auth.dart';
import 'package:kepu/Services/consts.dart';
import 'package:provider/provider.dart';
import 'package:kepu/Screens/Home/HomeScreen.dart';
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
                  height: 182.09,
                  child: Image.asset(
                    'assets/stillicon.png',
                    fit: BoxFit.cover,
                  )
                  // child: Lottie.asset(
                  //   "assets/kepu.json",
                  //   frameRate: FrameRate(30),
                  //   repeat: false,
                  //   fit: BoxFit.cover,
                  //   alignment: const Alignment(-10, -1.2),
                  // )
                ),

                Container(
                  height: 78.6,
                  child: Image.asset(
                    'assets/kepu.png',
                    fit: BoxFit.cover,
                  )
                ),

                Center(
                  child: Container(
                      margin: const EdgeInsets.only(top: 24, left: 24, right: 24),
                      width: 205.03,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.googleLogin();
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          size : 16,
                          color: Colors.black,
                        ),
                        label: Text(
                          sign_in_text,
                          style: const TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            backgroundColor: const Color(0xFFFBCD71)),
                      )

                  ),
                ),
                Center(
                  child: Container(
                      margin: const EdgeInsets.only(top: 5, left: 24, right: 24),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0.0,
                        ),
                        child: const Text(
                          'Guest',
                          style: TextStyle(color: Colors.blueAccent, fontSize: 16, decoration: TextDecoration.underline),
                        ),
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
