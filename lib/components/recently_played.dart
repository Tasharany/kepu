import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kepu/api/image_resolution_modifier.dart';
import 'package:kepu/providers/media_manager.dart';
import 'package:kepu/ui/colors.dart';
import 'package:kepu/ui/text_styles.dart';
import 'package:kepu/utils/downlod.dart';
import 'package:kepu/utils/option_menu.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../const/colors.dart';
import '../generated/l10n.dart';
import '../utils.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('songHistory').listenable(),
      builder: (context, value, child) {
        List songsItems = value.values.toList();
        songsItems.sort((a, b) => b['time_added'].compareTo(a['time_added']));

        return songsItems.isEmpty
            ? const SizedBox()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(S.of(context).recentlyPlayed.toUpperCase(),
                      style: SafeGoogleFont (
                          'Radio Canada',
                          color: kepuBlue,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 176,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      scrollDirection: Axis.horizontal,
                      itemCount: songsItems.length,
                      itemBuilder: (context, index) {
                        Map mapSong = songsItems[index];
                        return FutureBuilder(
                            future: processSong(songsItems[index]),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                MediaItem song = snapshot.data!;
                                return GestureDetector(
                                  onTap: () {
                                    context.read<MediaManager>().addAndPlay(
                                        songsItems,
                                        initialIndex: index);
                                  },
                                  onLongPress: () {
                                    showSongOptions(context, Map.from(mapSong));
                                  },
                                  child: SizedBox(
                                    width: song.extras!['type'] == 'video'
                                        ? 250
                                        : 150,
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: song.extras!['offline'] ==
                                                      true &&
                                                  !song.artUri
                                                      .toString()
                                                      .startsWith('http')
                                              ? Image.file(
                                                  File.fromUri(song.artUri!),
                                                  height: 150,
                                                  fit: BoxFit.fitHeight,
                                                  errorBuilder: (context, error,
                                                      stackTrace) {
                                                    return CachedNetworkImage(
                                                      imageUrl: getImageUrl(song
                                                          .artUri
                                                          .toString()),
                                                      height: 150,
                                                      fit: BoxFit.fitHeight,
                                                    );
                                                  },
                                                )
                                              : CachedNetworkImage(
                                                  imageUrl: getImageUrl(
                                                      song.artUri.toString()),
                                                  height: 150,
                                                  fit: BoxFit.fitHeight,
                                                  errorWidget:
                                                      (context, url, error) {
                                                    return Container(
                                                      height: 150,
                                                      decoration: BoxDecoration(
                                                        color: darkGreyColor
                                                            .withAlpha(50),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: const Icon(
                                                          Iconsax.music,
                                                          size: 70),
                                                    );
                                                  },
                                                ),
                                        ),
                                        const SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Center(
                                            child: AutoSizeText(
                                              song.title,
                                              style: SafeGoogleFont (
                                                  'Radio Canada',
                                                  color: Colors.black87
                                              ),
                                              overflow: TextOverflow.clip,
                                              maxLines: 1,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                              return const SizedBox();
                            });
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              );
      },
    );
  }
}
