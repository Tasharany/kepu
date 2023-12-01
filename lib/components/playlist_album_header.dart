import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kepu/api/image_resolution_modifier.dart';
import 'package:kepu/generated/l10n.dart';
import 'package:kepu/providers/media_manager.dart';
import 'package:kepu/ui/text_styles.dart';
import 'package:kepu/utils/get_subtitle.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import '../utils.dart';

class PlaylistAlbumHeader extends StatefulWidget {
  const PlaylistAlbumHeader({
    super.key,
    required this.item,
    required this.songs,
  });

  final Map item;
  final List songs;

  @override
  State<PlaylistAlbumHeader> createState() => _PlaylistAlbumHeaderState();
}

class _PlaylistAlbumHeaderState extends State<PlaylistAlbumHeader> {
  late bool isSaved;
  @override
  void initState() {
    super.initState();
    isSaved = Hive.box('playlists').get(widget.item['id']) != null;
  }

  @override
  Widget build(BuildContext context) {
    MediaManager mediaManager = context.read<MediaManager>();
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: getImageUrl(widget.item['image']),
              width: min((constraints.maxWidth / 2) - 20, 150),
              height: min((constraints.maxWidth / 2) - 20, 150),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: constraints.maxWidth -
                20 -
                min((constraints.maxWidth / 2), 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(widget.item['title'],
                  style: SafeGoogleFont (
                      'Radio Canada',
                  ),
                  maxLines: 1,
              ),
                AutoSizeText(getSubTitle(widget.item),
                  style: SafeGoogleFont (
                    'Radio Canada',
                  ),
                ),
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        mediaManager.addAndPlay(widget.songs);
                      },
                      color: Theme.of(context).colorScheme.inversePrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Colors.black87, width: 1.5),
                      ),
                      child: AutoSizeText(S.of(context).playAll,
                        style: SafeGoogleFont (
                          'Radio Canada',
                        ),
                        maxLines: 2,
                      ),
                    ),
                    MaterialButton(
                      color: isSaved
                          ? Theme.of(context).colorScheme.inversePrimary
                          : null,
                      shape: const CircleBorder(),
                      onPressed: () async {
                        if (isSaved) {
                          await Hive.box('playlists').delete(widget.item['id']);
                        } else {
                          await Hive.box('playlists').put(
                            widget.item['id'],
                            {
                              'custom': false,
                              ...widget.item,
                              'songs': widget.songs.length,
                            },
                          );
                        }
                        setState(() {
                          isSaved =
                              Hive.box('playlists').get(widget.item['id']) !=
                                  null;
                        });
                      },
                      child: const Icon(Icons.bookmark),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      );
    });
  }
}
