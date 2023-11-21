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
  List<String> buttons = ["assets/BottomNav/cottage_FILL0_wght400_GRAD0_opsz24 2.png"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 4.0,
                offset: Offset(0.0, -4)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Image.asset(
              buttons[0],
              height: 41,
              width: 41,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                widget.currentIndex = 0;
                buttons[0] = "assets/BottomNav/Activecottage_FILL0_wght400_GRAD0_opsz24 2.png";
              });
              GoRouter.of(context).go('/home');
            },
          ),
          IconButton(
            icon: Image.asset("assets/BottomNav/todo_FILL0_wght400_GRAD0_opsz24 1.png",
              height: 40,
              width: 40,
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
            icon: Image.asset("assets/BottomNav/add.png",
              height: 60,
              width: 60,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                widget.currentIndex = 2;
              });
              GoRouter.of(context).go('/pouch');
            },
          ),IconButton(
            icon: Image.asset("assets/BottomNav/toys_fan_FILL0_wght400_GRAD0_opsz24 1.png",
              height: 41,
              width: 41,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                widget.currentIndex = 3;
              });
              GoRouter.of(context).go('/spin');
            },
          ),
          IconButton(
            icon: Image.asset("assets/BottomNav/person_FILL0_wght400_GRAD0_opsz24 1.png",
              height: 41,
              width: 41,
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
