import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../Widgets/BottomNavBar.dart';
import '../../feature/favourites/presentation/pages/favourites_page.dart';
import '../Music/playlists/favorites_details.dart';
import '../Music/playlists/playlists_screen.dart';
import 'ChartPouch.dart';

class PouchScreen extends StatefulWidget {
  const PouchScreen({
    super.key,
  });

  _PouchScreenState createState() => _PouchScreenState();
}

class _PouchScreenState extends State<PouchScreen> with TickerProviderStateMixin {
  ScrollController _scrollController = ScrollController();
  bool isVisible = true;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(listen);
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: AnimatedBuilder(
            animation: _scrollController,
            builder: ((context, child) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 800),
                curve: Curves.fastLinearToSlowEaseIn,
                height: isVisible ? 75 : 0,
                child: BottomNavBar(
                  currentIndex: 2,
                ),
              );
            })),
        appBar: AppBar(
          title: Center(child: Text("Pouch",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20))),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: Container(
              height: 60,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 2,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                  color: Colors.grey[200],
                ),
                child: TabBar(
                  labelColor: Colors.purple[300],
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    //color: Colors.red.shade200,
                  ),
                  tabs: const [
                    Tab(
                      icon: ImageIcon(AssetImage('assets/page-1/images/movie-8ev.png')),
                    ),
                    Tab(
                      icon: ImageIcon(AssetImage('assets/page-1/images/movie-hog.png')),
                    ),

                    Tab(
                      icon: ImageIcon(AssetImage('assets/page-1/images/movie-fke.png')),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body:  TabBarView(
          children: [
            Center(
              child: ChartPouch(),
            ),
            Center(
              child: FavouritesPage(),
            ),
            Center(
              child: PlaylistsScreen(),
            ),
          ],
        ),
      ),
    );
  }
}