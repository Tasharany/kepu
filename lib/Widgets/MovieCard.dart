import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../utils.dart';

class MovieCard extends StatelessWidget {
  MovieCard(this.title, this.image, this.Id, this.mediaType, {super.key});
  String title;
  ImageProvider image;
  String Id;
  String mediaType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        GoRouter.of(context).push('/$mediaType/$Id');
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 100,
            margin: const EdgeInsets.fromLTRB(8, 0, 8, 4),
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: image),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            width: 100,
            child: AutoSizeText(
              title,
              style: SafeGoogleFont (
                  'Radio Canada',
                  color: Colors.black87
              ),
              maxLines: 1,
              minFontSize: 15,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
