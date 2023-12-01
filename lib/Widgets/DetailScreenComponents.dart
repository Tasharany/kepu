import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../utils.dart';

Widget TextContainer(String data, EdgeInsets margin, Color color) {
  return Container(
    constraints: const BoxConstraints(minHeight: 36),
    margin: margin,
    decoration: BoxDecoration(
        color: color.withOpacity(0.6),
        border:
            Border.all(width: 1.5, color: const Color(0xFF373741)),
        borderRadius: BorderRadius.circular(5)),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Text(
        data,
        style: SafeGoogleFont (
            'Radio Canada',
            color: Colors.black87,
        ),
      ),
    ),
  );
}

Widget PlayButton(IconData icon, {required Function() onTap}) {
  return InkWell(
    onTap: () {
      onTap();
    },
    child: Container(
      width: 125,
      height: 36,
      margin: const EdgeInsets.only(top: 8, right: 8),
      decoration: BoxDecoration(
          color: const Color(0xFFE1E1E1),
          border: Border.all(width: 1.5, color: const Color(0xFF373741)),
          borderRadius: BorderRadius.circular(5)),
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Center(
          child: Row(
            children: [
              Image.asset(
                'assets/youtube.png',
              ),
              SizedBox(width: 4),
              Text(
                'Play Trailer',
                style: SafeGoogleFont (
                    'Radio Canada',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget CircularButton(IconData icon, {required Function() onTap}) {
  return InkWell(
    onTap: () {
      onTap();
    },
    child: Container(
      width: 36,
      height: 36,
      margin: const EdgeInsets.only(top: 8, right: 8),
      decoration: BoxDecoration(
          color: kepuYellow,
          border: Border.all(width: 1.5, color: Colors.black87),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Icon(icon, color: Colors.black87),
      ),
    ),
  );
}

Widget TitleText(data) {
  return Container(
    margin: const EdgeInsets.all(8),
    child: Text(
      data,
      style: SafeGoogleFont (
        'Radio Canada',
        color: Colors.black87,
        fontSize: 20,
      ),
    ),
  );
}
