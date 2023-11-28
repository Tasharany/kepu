import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:kepu/api/api.dart';
import 'package:kepu/api/format.dart';
import 'package:kepu/api/ytmusic.dart';
import 'package:kepu/components/home_section.dart';
import 'package:kepu/components/recently_played.dart';
import 'package:kepu/components/recommendations.dart';
import 'package:kepu/ui/colors.dart';
import 'package:kepu/utils/recomendations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:kepu/components/skeletons/home_page.dart';
import '../../../generated/l10n.dart';
import 'package:kepu/utils/router.dart';
class MusicHomeScreen extends StatefulWidget {
  const MusicHomeScreen({super.key});

  @override
  State<MusicHomeScreen> createState() => _MusicHomeScreenState();
}

class _MusicHomeScreenState extends State<MusicHomeScreen>
    with AutomaticKeepAliveClientMixin<MusicHomeScreen> {
  List songs = [];
  List recommendedSongs = [];
  double tileHeight = 0;
  bool loading = false;

  @override
  void initState() {
    super.initState();
    fetchAllData();
  }

  @override
  void dispose() {
    super.dispose();
    GetIt.I<AudioPlayer>().dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Hero(
          tag: "SearchField",
          child: TextField(
            onTap: () =>  GoRouter.of(context).go('search'),
            readOnly: true,
            decoration: InputDecoration(
              fillColor: darkGreyColor.withAlpha(50),
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide.none,
              ),
              hintText: S.of(context).searchGyawun,
              prefixIcon: const Icon(Icons.search),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: loading
          ? const HomePageSkeleton()
          : RefreshIndicator(
              onRefresh: () => fetchAllData(),
              child: ListView(
                children: [
                  if (recommendedSongs.isNotEmpty)
                    Recommendations(recommendedSongs: recommendedSongs),
                  const RecentlyPlayed(),
                  ...songs
                      .map((item) => HomeSection(sectionIitem: item))
                      .toList()
                ],
              ),
            ),
    );
  }

  fetchAllData() async {
    // setState(() {
    //   loading = true;
    //   recommendedSongs = [];
    //   songs = [];
    // });
    Box homeCache = Hive.box('HomeCache');
    recommendedSongs = await homeCache.get('recommended', defaultValue: []);
    songs = await homeCache.get('songs', defaultValue: []);
    setState(() {
      if (recommendedSongs.isEmpty && songs.isEmpty) {
        loading = true;
      }
    });
    recommendedSongs = await getRecomendations();
    songs = await fetchHomeData();

    await Hive.box('HomeCache').putAll({
      'recommended': recommendedSongs,
      'songs': songs,
    });
    setState(() {
      loading = false;
    });
  }

  @override
  bool get wantKeepAlive => true;
}

Future<List> fetchHomeData() async {
  String provider =
      Hive.box('settings').get('homescreenProvider', defaultValue: 'saavn');

  List tiles = [];
  if (provider == 'youtube') {
    Map<String, dynamic> a = await YtMusicService().getMusicHome();
    tiles = a['body'];
    // pprint(a['body']);
  } else {
    Map<dynamic, dynamic> data = await SaavnAPI().fetchHomePageData();
    Map<dynamic, dynamic> formatedData =
        await FormatResponse.formatPromoLists(data);
    Map modules = formatedData['modules'];
    modules.forEach((key, value) {
      tiles.add({
        'title': value['title'],
        'items': formatedData[key],
      });
    });
  }

  return tiles;
}
