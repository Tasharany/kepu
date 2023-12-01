import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kepu/Services/auth.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils.dart';

Future<void> LaunchUrl(String url) async {
  final Uri url0 = Uri.parse(url);
  if (!await launchUrl(url0)) {
    throw Exception('Could not launch $url0');
  }
}

void pshowDialog(BuildContext context, String Id, String mediaType) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        backgroundColor: const Color(0xFF12121C).withOpacity(0.95),
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Select Option",
                style: SafeGoogleFont (
                  'Radio Canada',
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: Colors.white.withOpacity(0.5),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  FireBaseServices().addWatching(Id, "Watching", mediaType);
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.play_circle_rounded,
                      color: Color(0xFF16F66A),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Watching",
                      style: SafeGoogleFont (
                        'Radio Canada',
                        color: Color(0xFF16F66A),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  FireBaseServices().addWatching(Id, "Completed", mediaType);
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: Color(0xFF36A5D0),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Completed",
                      style: SafeGoogleFont (
                        'Radio Canada',
                        color: Color(0xFF36A5D0),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  FireBaseServices().addWatching(Id, "On-Hold", mediaType);
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.pause_rounded,
                      color: Color(0xFFDAC22E),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("On Hold",
                        style: SafeGoogleFont (
                        'Radio Canada',
                        color: Color(0xFFDAC22E)))
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  FireBaseServices().addWatching(Id, "Dropped", mediaType);
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.delete_rounded,
                      color: Color(0xFFE52E5C),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Dropped",
                        style: SafeGoogleFont (
                        'Radio Canada',
                        color: Color(0xFFE52E5C)))
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
