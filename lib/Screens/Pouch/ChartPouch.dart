import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:kepu/utils/router.dart';
import '../../Services/auth.dart';
import '../../Services/consts.dart';
import '../WatchListScreen.dart';
import 'package:fluttericon/linecons_icons.dart';
  @override
  class ChartPouch extends StatefulWidget {
  const ChartPouch({super.key});

  @override
  State<ChartPouch> createState() => _ChartPouchState();
  }

  class _ChartPouchState extends State<ChartPouch> {
    bool isVisible = true;
    bool isLoading = true;
    late List watchlist;
    List completed = [];
    List watching = [];
    List onhold = [];
    List dropped = [];

    @override
    void initState() {
      super.initState();
      fetchData();

    }

    void fetchData() async {
      watchlist = await FireBaseServices().getWatchList();
      for (int i = 0; i < watchlist.length; i++) {
        if (watchlist[i]["status"] == "Completed") {
          completed.add(watchlist[i]);
        } else if (watchlist[i]["status"] == "Watching") {
          watching.add(watchlist[i]);
        } else if (watchlist[i]["status"] == "On-Hold") {
          onhold.add(watchlist[i]);
        } else if (watchlist[i]["status"] == "Dropped") {
          dropped.add(watchlist[i]);
        }
      }
      setState(() {
        isLoading = false;
      });
    }
    final User _user = FirebaseAuth.instance.currentUser!;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: background_primary,
        extendBody: true,
        body:
        Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 0),
            children: [
              Container(
                margin: EdgeInsets.only(right: 8, left: 8),
                alignment: Alignment.topLeft,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).pushReplacement('/search');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.only(
                            right: 25,
                            bottom: 200,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFF14303B).withOpacity(0.25),
                              border: Border.all(
                                  color: Color(0xFF14303B).withOpacity(0.25),
                                  width: 1.5),
                              borderRadius: BorderRadius.circular(6)),
                          child: Icon(
                            Linecons.search,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (watching.length == 0) {
                              HapticFeedback.mediumImpact();
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WatchListScreen(
                                    watchList: watching,
                                    status: "Watching",
                                  ),
                                ),
                              );
                            }
                          },
                          child: WatchListTile(
                              watching.length.toString(), "Watching"),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (completed.length == 0) {
                              HapticFeedback.mediumImpact();
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WatchListScreen(
                                    watchList: completed,
                                    status: "Completed",
                                  ),
                                ),
                              );
                            }
                          },
                          child: WatchListTile(
                              completed.length.toString(), "Completed"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              if (onhold.length == 0) {
                                HapticFeedback.mediumImpact();
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WatchListScreen(
                                      watchList: onhold,
                                      status: "On Hold",
                                    ),
                                  ),
                                );
                              }
                            },
                            child: WatchListTile(
                                onhold.length.toString(), "On Hold")),
                        GestureDetector(
                            onTap: () {
                              if (dropped.length == 0) {
                                HapticFeedback.mediumImpact();
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WatchListScreen(
                                      watchList: dropped,
                                      status: "Dropped",
                                    ),
                                  ),
                                );
                              }
                            },
                            child: WatchListTile(
                                dropped.length.toString(), "Dropped")),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }


Widget WatchListTile(String count, String title) {
  return Container(
    height: 110,
    width: 160,
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xFF14303B).withOpacity(0.25),
      border: Border.all(color: Color(0xFF14303B).withOpacity(0.5), width: 1),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8, left: 8),
          child: Text(
            count,
            style: TextStyle(
              color: accent_secondary,
              fontSize: 36,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4, left: 8),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}


