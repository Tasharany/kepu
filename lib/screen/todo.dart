import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kepu/const/colors.dart';
import 'package:kepu/screen/add_note_screen.dart';
import 'package:kepu/widgets/stream_note.dart';

import '../Widgets/BottomNavBar.dart';
import '../utils.dart';

class ToDoListScreen extends StatefulWidget {
  const ToDoListScreen({super.key});

  @override
  State<ToDoListScreen> createState() => _ToDoListScreenState();
}



class _ToDoListScreenState extends State<ToDoListScreen> {
  ScrollController _scrollController = ScrollController();
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
      show0();
    } else if (direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show0() {
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

  bool show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBuilder(
          animation: _scrollController,
          builder: ((context, child) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              curve: Curves.fastLinearToSlowEaseIn,
              height: isVisible ? 75 : 0,
              child: BottomNavBar(
                currentIndex: 1,
              ),
            );
          })),
      backgroundColor: backgroundColor,
      floatingActionButton: Visibility(
        visible: show,
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Add_screen(),
            ));
          },
          style: OutlinedButton.styleFrom(
            primary: Colors.black,
            backgroundColor: kepuYellow,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            side: BorderSide(color: Color(0x000000)),
          ),
          child: Icon(Icons.add, size: 30),
        ),
      ),
      body: SafeArea(
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                show = true;
              });
            }
            if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                show = false;
              });
            }
            return true;
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  'to do',
                  style: SafeGoogleFont (
                      'Radio Canada',
                      fontSize: 28,
                      color: kepuTitleBlue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Stream_note(false),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  'done',
                  style: SafeGoogleFont (
                      'Radio Canada',
                      fontSize: 28,
                      color: kepuTitleBlue,
                      fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Stream_note(true),
            ],
          ),
        ),
      ),
    );
  }
}
