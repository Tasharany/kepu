import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepu/config/theme/colors.dart';
import 'package:kepu/feature/games/domain/model/game.dart';
import '../../domain/model/game_deatils.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../blocs/favorites_bloc/favorites_bloc.dart';
import '../pages/screenshots_page.dart';
import 'package:share_plus/share_plus.dart';

class GameDetailsWidget extends StatelessWidget {
  final GameResults game;
  final GameDetails gameDetails;

  GameDetailsWidget(
      {Key? key,
      required this.game,
      required this.gameDetails,
      required this.isFavorite})
      : super(key: key);

  BuildContext? blocContext;
  bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text(gameDetails.name),
          actions: buildAppBarActions(context),
          expandedHeight: 270.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(children: [
              CachedNetworkImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageUrl: gameDetails.backgroundImageAdditional ?? '',
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColors.darkGrey, Colors.transparent])),
                ),
              ),
              Positioned(
                top: 150,
                left: 120,
                right: 120,
                bottom: 30,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                              gameDetails.backgroundImage ?? '',
                              cacheKey: gameDetails.backgroundImage),
                          fit: BoxFit.cover,
                          scale: 1.0,
                        ),
                        color: AppColors.darkGrey,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              AppColors.darkGrey,
                              Colors.transparent
                            ])),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                gameDetails.name,
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 10.0,
                                      color: Colors.black,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 1,
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColors.darkGrey, Colors.transparent])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Iconic.star,
                            color: game.rating! >= 4
                                ? AppColors.lightGreen
                                : AppColors.orange,
                            size: 20,
                          ),
                          Text(
                            game.rating.toString(),
                            style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Iconic.chart_bar,
                            color: AppColors.orange,
                            size: 20,
                          ),
                          Text(
                            game.reviewsCount.toString(),
                            style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Iconic.cloud,
                            color: AppColors.orange,
                            size: 20,
                          ),
                          Text(
                            '${game.metaCritic.toString()}%',
                            style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            collapseMode: CollapseMode.parallax,
          ),
        ),
        SliverFillRemaining(
          child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5, left: 5),
                            child: Text(
                              'Genres',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 16),
                            ),
                          ),
                          Expanded(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: game.genres?.length,
                                  itemBuilder: (context, index) {
                                    final genre = game.genres![index];
                                    return Container(
                                      margin: const EdgeInsets.all(5),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: AppColors.darkGrey),
                                      child: Center(child: Text(genre.name)),
                                    );
                                  })),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Description',
                            style:
                                TextStyle(color: AppColors.white, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            gameDetails.descriptionRaw!,
                            style: const TextStyle(color: AppColors.white),
                            textAlign: TextAlign.justify,
                            maxLines: 9,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 70,
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                      margin: const EdgeInsets.only(top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Platforms',
                            style: TextStyle(color: AppColors.white),
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: game.platforms?.length,
                              itemBuilder: (context, index) {
                                final platform = game.platforms![index];
                                return Container(
                                  height: 50,
                                  width: 50,
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      if (platform.platform!.name!
                                          .contains('PC'))
                                        Image.asset(
                                          'assets/icons/windows_logo.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      if (platform.platform!.name!
                                          .contains('PlayStation'))
                                        Image.asset(
                                          'assets/icons/ps_logo.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      if (platform.platform!.name!
                                          .contains('Xbox'))
                                        Image.asset(
                                          'assets/icons/xbox_logo.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      if (platform.platform!.name!
                                          .contains('Wii'))
                                        Image.asset(
                                          'assets/icons/wii_logo.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      if (platform.platform!.name!
                                              .contains('iOS') ||
                                          platform.platform!.name!
                                              .contains('iPhone') ||
                                          platform.platform!.name!
                                              .contains('iPad'))
                                        Image.asset(
                                          'assets/icons/apple_logo.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      if (platform.platform!.name!
                                          .contains('Android'))
                                        Image.asset(
                                          'assets/icons/android_logo.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      if (platform.platform!.name!
                                              .contains('macOs') ||
                                          platform.platform!.name!
                                              .contains('Macintosh'))
                                        Image.asset(
                                          'assets/icons/mac.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      if (platform.platform!.name!
                                          .contains('Linux'))
                                        Image.asset(
                                          'assets/icons/linux_logo.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      if (platform.platform!.name!
                                          .contains('PS'))
                                        Image.asset(
                                          'assets/icons/ps_vista.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      if (platform.platform!.name!
                                          .contains('Nintendo'))
                                        Image.asset(
                                          'assets/icons/gamepad.png',
                                          height: 25,
                                          width: 25,
                                        )
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 80,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5, left: 5),
                            child: Text(
                              'Tags',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 16),
                            ),
                          ),
                          Expanded(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: game.tags!.length,
                                  itemBuilder: (context, index) {
                                    final tag = game.tags![index];
                                    return Container(
                                      margin: const EdgeInsets.all(5),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: AppColors.darkGrey),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          const Icon(
                                            Icons.bookmark,
                                            color: AppColors.orange,
                                          ),
                                          Text(
                                            tag.name,
                                            style: const TextStyle(
                                                color: AppColors.white),
                                          )
                                        ],
                                      )),
                                    );
                                  })),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5, left: 5),
                            child: Text(
                              'Screenshots',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 16),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: CarouselSlider(
                                options: CarouselOptions(
                                  height: 150,
                                  autoPlay: true,
                                  autoPlayInterval: const Duration(seconds: 3),
                                  autoPlayAnimationDuration:
                                      const Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enlargeCenterPage: true,
                                  scrollDirection: Axis.horizontal,
                                ),
                                items: game.shortScreenshots?.map((i) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ScreenshotsPage(
                                                      screenshot: i.image),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          decoration: const BoxDecoration(
                                            color: AppColors.darkGrey,
                                          ),
                                          child: Image.network(
                                            i.image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }).toList(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 170,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5, left: 5),
                            child: Text(
                              'Developers',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 16),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: gameDetails.developers!.length,
                              itemBuilder: (context, index) {
                                final developer =
                                    gameDetails.developers![index];
                                return Container(
                                    width: 90,
                                    margin: const EdgeInsets.all(5),
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        color:
                                            AppColors.darkGrey.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          radius: 35,
                                          backgroundImage: NetworkImage(
                                              developer.imageBackground),
                                        ),
                                        const Spacer(),
                                        Expanded(
                                          child: Text(
                                            developer.name,
                                            style: const TextStyle(
                                              color: AppColors.white,
                                              fontSize: 11,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            softWrap: true,
                                          ),
                                        )
                                      ],
                                    ));
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ]),
        )
      ],
    ));
  }

  //Build app bar actions
  List<Widget> buildAppBarActions(BuildContext context) {
    return [
      _buildAddToFavoritesButton(context),
      IconButton(
        icon: const Icon(Icons.share),
        onPressed: () {
          Share.share('Check out this game ${game.name}');
        },
      ),
    ];
  }

  _buildAddToFavoritesButton(BuildContext context) {
    return IconButton(
      icon: isFavorite == false
          ? const Icon(Icons.favorite_border)
          : const Icon(Icons.favorite),
      onPressed: () {
        if (isFavorite == false) {
          isFavorite = true;
          dispatchAddToFavoritesEvent(context);
        } else {
          isFavorite = false;
          dispatchRemoveFromFavsEvent(context);
        }
      },
    );
  }

  void dispatchAddToFavoritesEvent(BuildContext context) {
    BlocProvider.of<FavoritesBloc>(context).add(
      AddGameToFavoritesEvent(
        game: game,
      ),
    );
  }

  void dispatchRemoveFromFavsEvent(BuildContext context) {
    BlocProvider.of<FavoritesBloc>(context).add(
      RemoveGameFromFavoritesEvent(
        id: game.id!,
      ),
    );
  }
}
