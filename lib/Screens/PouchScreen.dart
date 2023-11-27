import 'package:flutter/material.dart';

class PouchScreen extends StatefulWidget {
  const PouchScreen({
    super.key,
  });

  _PouchScreenState createState() => _PouchScreenState();
}

class _PouchScreenState extends State<PouchScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("What's Next?",style: TextStyle(
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
              child: Text(
                'Movies',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Center(
              child: Text(
                'Games',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Center(
              child: Text(
                'Music',
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