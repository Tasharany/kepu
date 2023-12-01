import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kepu/Models/PopularMovies.dart';
import 'package:kepu/Models/TvShow.dart';
import 'package:kepu/Services/API.dart';
import 'package:kepu/Services/consts.dart';
import 'package:kepu/Widgets/BottomNavBar.dart';
import 'package:kepu/Widgets/CarouselCard.dart';
import 'package:kepu/Widgets/CustomLists.dart';
import 'package:kepu/Widgets/LoadingScreen.dart';
import 'package:kepu/Widgets/SectionText.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>  with TickerProviderStateMixin{
  late TabController _tabController;
  ScrollController _scrollController = ScrollController();
  bool isVisible = true;

  late List<Results> popularMovie;
  late List<Results> topRatedMovie;
  late List<Results> nowPLayingMovie;
  late List<TvShow> popularShows;
  late List<TvShow> topRatedShows;
  bool isLoading = true;


  @override
  void initState() {
    super.initState();
    fetchData();
    _scrollController = ScrollController();
    _scrollController.addListener(listen);
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _scrollController.removeListener(listen);
    _scrollController.dispose();
    super.dispose();
  }

  void listen() {
    final direction = _scrollController.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      show();
    } else if (direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show() {
    if (!isVisible) {
      (setState(
        () => isVisible = true,
      ));
    }
  }

  void hide() {
    if (isVisible) {
      (setState(
        () => isVisible = false,
      ));
    }
  }

  Future<void> fetchData() async {
    topRatedShows = await APIService().getTopRatedShow();
    popularMovie = await APIService().getPopularMovie();
    topRatedMovie = await APIService().getTopRatedMovie();
    popularShows = await APIService().getRecommendedTvShows("1396");
    nowPLayingMovie = await APIService().getNowPLayingMovie();
    setState(() {
      isLoading = false;
    });
  }

  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: isLoading
          ? const LoadingScreen()
          : Container(
              height: size.height,
              width: size.width,
              color: background_primary,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                controller: _scrollController,
                shrinkWrap: true,
                children: [
                  // CustomCarouselSlider(topRatedShows),
                  SectionText("Popular", "Movies"),
                  CustomListMovie(popularMovie),
                  SectionText("Top Rated", "Movies"),
                  CustomListMovie(topRatedMovie),
                  SectionText("Popular", "Shows"),
                  CustomListTV(popularShows),
                  SectionText("Now Playing", "Movies"),
                  CustomListMovie(nowPLayingMovie),
                ],
              ),
            ),
    );
  }
}





