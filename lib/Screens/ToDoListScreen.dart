import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:kepu/Widgets/BottomNavBar.dart';



final User _user = FirebaseAuth.instance.currentUser!;

class ToDoListScreen extends StatefulWidget {
  const ToDoListScreen({super.key});

  @override
  State<ToDoListScreen> createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  @override
  ScrollController _scrollController = ScrollController();
  bool isVisible = true;

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
    // TODO: implement build
    throw UnimplementedError();
  }
}