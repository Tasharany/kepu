import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kepu/api/image_resolution_modifier.dart';
import 'package:kepu/providers/media_manager.dart';
import 'package:kepu/ui/colors.dart';
import 'package:kepu/ui/text_styles.dart';
import 'package:kepu/utils/option_menu.dart';
import 'package:kepu/utils/snackbar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../const/colors.dart';
import '../utils.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({
    super.key,
    required this.sectionIitem,
  });
  final Map sectionIitem;

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  List sectionitems = [];
  late List items;

  @override
  void initState() {
    super.initState();
    items = widget.sectionIitem['items'];
    sectionitems = items
        .where((element) =>
            element['type'] == 'song' || element['type'] == 'video')
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
          child: Text(
            widget.sectionIitem['title'].toUpperCase(),
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
            shrinkWrap: true,
            cacheExtent: null,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              Map song = items[index];

              return InkWell(
                focusColor: Colors.white,
                onTap: () {
                  if (song['type'] == 'song' || song['type'] == 'video') {
                    context.read<MediaManager>().addAndPlay(sectionitems,
                        initialIndex: sectionitems.indexOf(song));
                  } else if (song['type'] == 'radio_station') {
                    ShowSnackBar.showSnackBar(
                      context,
                      'Connecting Radio...',
                      duration: const Duration(seconds: 3),
                    );
                    context.read<MediaManager>().playRadio(song);
                  } else {
                    context.go('/list', extra: song);
                  }
                },
                onLongPress: () {
                  if (song['type'] == 'song') {
                    showSongOptions(context, Map.from(song));
                  }
                },
                onSecondaryTapDown: (details) {
                  if (song['type'] == 'song') {
                    showSongOptions(context, Map.from(song));
                  }
                },
                child: SizedBox(
                  width: song['type'] == 'chart' || song['type'] == 'video'
                      ? 250
                      : 150,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            song['type'] == 'radio_station' ? 75 : 10),
                        child: CachedNetworkImage(
                          imageUrl: getImageUrl(song['image']),
                          height: 150,
                          width:
                              song['type'] == 'chart' || song['type'] == 'video'
                                  ? 250
                                  : 150,
                          fit: BoxFit.fill,
                          errorWidget: (context, url, error) {
                            return Container(
                              height: 150,
                              width: song['type'] == 'chart' ||
                                      song['type'] == 'video'
                                  ? 250
                                  : 150,
                              decoration: BoxDecoration(
                                color: darkGreyColor.withAlpha(50),
                                borderRadius: BorderRadius.circular(
                                    song['type'] == 'radio_station' ? 75 : 10),
                              ),
                              child: Icon(
                                song['type'] == 'song'
                                    ? Iconsax.music
                                    : song['type'] == 'radio_station'
                                        ? Iconsax.radio
                                        : Iconsax.music_playlist,
                                size: 70,
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width:
                            song['type'] == 'chart' || song['type'] == 'video'
                                ? 250
                                : 150,
                        child: Center(
                          child: AutoSizeText(
                            song['title'],
                            style: SafeGoogleFont (
                                'Radio Canada',
                                color: Colors.black87
                            ),
                            minFontSize: 15,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 8),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
