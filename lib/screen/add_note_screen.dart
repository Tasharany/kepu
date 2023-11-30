import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kepu/const/colors.dart';
import 'package:kepu/data/firestor.dart';

import '../utils.dart';

class Add_screen extends StatefulWidget {
  const Add_screen({super.key});

  @override
  State<Add_screen> createState() => _Add_screenState();
}

class _Add_screenState extends State<Add_screen> {
  final title = TextEditingController();
  final subtitle = TextEditingController();

  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  int indexx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            label('title:'),
            title_widget(),
            SizedBox(height: 20),
            label('description:'),
            description_widget(),
            SizedBox(height: 20),
            label('type:'),
            tasktype_widget(),
            SizedBox(height: 20),
            button()
          ],
        ),
      ),
    );
  }

  Widget label(String name) {
    return Padding (
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          name,
          style: SafeGoogleFont (
              'Radio Canada',
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        )
    );
  }

  Widget button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
          OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: Colors.black,
            backgroundColor: kepuYellow,
            minimumSize: Size(170, 48),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            side: BorderSide(color: Color(0x000000)),
          ),
          onPressed: () {
            Firestore_Datasource().AddNote(subtitle.text, title.text, indexx);
            Navigator.pop(context);
          },
          child: Text(
            'add task',
            style: SafeGoogleFont (
                'Radio Canada',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
            ),
          )
        ),
          OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: Colors.black,
            backgroundColor: kepuYellow,
            minimumSize: Size(170, 48),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            side: BorderSide(color: Color(0x000000)),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'cancel',
            style: SafeGoogleFont (
                'Radio Canada',
                fontSize: 17,
                fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )
        ),
      ],
    );
  }

  Container tasktype_widget() {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                indexx = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(left: index == 0 ? 7 : 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: indexx == index ? outlineColor : Colors.grey,
                  ),
                ),
                width: 100,
                margin: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/${index}.png'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget title_widget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          controller: title,
          focusNode: _focusNode1,
          style: TextStyle(fontSize: 18, color: Colors.black),
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              hintText: 'title',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xffc5c5c5),
                  width: 2.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: outlineColor,
                  width: 2.0,
                ),
              )),
        ),
      ),
    );
  }

  Padding description_widget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          maxLines: 3,
          controller: subtitle,
          focusNode: _focusNode2,
          style: TextStyle(fontSize: 18, color: Colors.black),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            hintText: 'subtitle',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xffc5c5c5),
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: outlineColor,
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
