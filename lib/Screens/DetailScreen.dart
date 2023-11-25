import 'package:flutter/material.dart';
import 'MainScreen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    super.key,
  });

  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("What's New?",style: TextStyle(
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
        body: const TabBarView(
          children: [
            Center(
              child: MainScreen(),
            ),
            Center(
              child: Text(
                'Advanced Settings',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
