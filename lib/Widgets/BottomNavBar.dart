import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/services.dart';
import 'package:kepu/Services/consts.dart';
import 'package:flutter/widgets.dart';
import 'package:kepu/assets/my_flutter_app_icons.dart';

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
          color: accent_t.withOpacity(0.95),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
             // UniconsLine.home_alt,
              MyFlutterApp.home,
              color: widget.currentIndex == 0 ? Colors.white : inactive_accent,
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
              UniconsLine.search,
              color: widget.currentIndex == 1 ? Colors.white : inactive_accent,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                widget.currentIndex = 1;
              });
              GoRouter.of(context).go('/search');
            },
          ),
          IconButton(
            icon: Icon(
              UniconsLine.heart,
              color: widget.currentIndex == 2 ? Colors.white : inactive_accent,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                widget.currentIndex = 2;
              });
              GoRouter.of(context).go('/profile');
            },
          ),
        ],
      ),
    );
  }
}
