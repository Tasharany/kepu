import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:kepu/Screens/WatchListScreen.dart';
import 'package:kepu/Services/auth.dart';
import 'package:kepu/Services/consts.dart';
import 'package:kepu/Widgets/BottomNavBar.dart';
import 'package:provider/provider.dart';
import 'package:kepu/Widgets/LoadingScreen.dart';

import '../const/colors.dart';
import '../utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ScrollController _scrollController = ScrollController();
  bool isVisible = true;
  bool isLoading = true;
  late List watchlist;
  List completed = [];
  List watching = [];
  List onhold = [];
  List dropped = [];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(listen);
  }

  @override
  void dispose() {
    _scrollController.removeListener(listen);
    _scrollController.dispose();
    super.dispose();
  }

  void listen() {
    final direction = _scrollController.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      show();
    } else if (direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show() {
    if (!isVisible) {
      (setState(() => isVisible = true,));
    }
  }

  void hide() {
    if (isVisible) {
      (setState(() => isVisible = false,));
    }
  }

  final User _user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBuilder(
          animation: _scrollController,
          builder: ((context, child) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              curve: Curves.fastLinearToSlowEaseIn,
              height: isVisible ? 75 : 0,
              child: BottomNavBar(
                currentIndex: 4,
              ),
            );
          })),
      backgroundColor: backgroundColor,
      extendBody: true,
      body:
           Container(
              child: ListView(
                controller: _scrollController,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(top: 0),
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [

                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,

                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              margin: const EdgeInsets.only(left: 20, bottom: 20),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    image:
                                        NetworkImage(_user.photoURL.toString()),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              _user.displayName.toString(),
                              style: SafeGoogleFont (
                                'Radio Canada',
                                color: Colors.black87,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            final provider = Provider.of<GoogleSignInProvider>(
                                context,
                                listen: false);
                            provider.logout();
                            GoRouter.of(context).pushReplacement('/');
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(
                              right: 25,
                              bottom: 200,
                            ),
                            decoration: BoxDecoration(
                                color: kepuYellow,
                                border: Border.all(
                                    color: Colors.black87,
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(6)),
                            child: Icon(
                              Icons.logout_rounded,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
           ]),
    )
    );
  }
}

