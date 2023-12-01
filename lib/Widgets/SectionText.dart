import 'package:flutter/material.dart';
import 'package:kepu/Services/consts.dart';

import '../utils.dart';

Widget SectionText(String ktitle, String ntitle) {
  return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              ktitle.toUpperCase(),
              style: SafeGoogleFont (
                  'Radio Canada',
                  color: accent_secondary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            ),
          ),
          Text(
            ntitle.toUpperCase(),
            style: SafeGoogleFont (
                'Radio Canada',
                color: accent_secondary,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 1),
          ),
        ],
      ));
}
