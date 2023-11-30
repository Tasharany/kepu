import 'package:flutter/material.dart';
import 'package:kepu/const/colors.dart';
import 'package:kepu/data/firestore.dart';
import 'package:kepu/model/notes_model.dart';

import '../utils.dart';

class Edit_Screen extends StatefulWidget {
  Note _note;
  Edit_Screen(this._note, {super.key});

  @override
  State<Edit_Screen> createState() => _Edit_ScreenState();
}

class _Edit_ScreenState extends State<Edit_Screen> {
  TextEditingController? title;
  TextEditingController? subtitle;

  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  int indexx = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = TextEditingController(text: widget._note.title);
    subtitle = TextEditingController(text: widget._note.subtitle);
  }

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
              Firestore_Datasource().Update_Note(widget._note.id, indexx, title!.text, subtitle!.text);
              Navigator.pop(context);
            },
            child: Text(
              'edit task',
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
              Firestore_Datasource().delete_note(widget._note.id,);
              Navigator.pop(context);
            },
            child: Text(
              'delete task',
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
