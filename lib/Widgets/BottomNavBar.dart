import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/services.dart';
import 'package:kepu/Services/consts.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key, required this.currentIndex}) : super(key: key);
  int currentIndex = 0;

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 15.0,
                offset: Offset(0.0, -5)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
             // UniconsLine.home_alt,
              Octicons.home,
              color: widget.currentIndex == 0 ? Colors.blue : inactive_accent,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                widget.currentIndex = 0;
              });
              GoRouter.of(context).go('/main');
            },
          ),
          IconButton(
            icon: Icon(
              //same function as home button
              FontAwesome5.th_list,
              color: widget.currentIndex == 1 ? Colors.blue : inactive_accent,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                widget.currentIndex = 1;
              });
              GoRouter.of(context).go('/todo');
            },
          ),
          IconButton(
            icon: Image.asset("assets/add.png"),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                widget.currentIndex = 2;
              });
              GoRouter.of(context).go('/pouch');
            },
          ),IconButton(
            icon: Icon(
              // UniconsLine.heart,
              FontAwesome5.fan,
              color: widget.currentIndex == 3 ? Colors.blue : inactive_accent,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                widget.currentIndex = 3;
              });
              GoRouter.of(context).go('/search');
            },
          ),
          IconButton(
            icon: Icon(
             // UniconsLine.heart,
              Typicons.user_outline,
              color: widget.currentIndex == 4 ? Colors.blue : inactive_accent,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                widget.currentIndex = 4;
              });
              GoRouter.of(context).go('/profile');
            },
          ),
        ],
      ),
    );
  }
}
