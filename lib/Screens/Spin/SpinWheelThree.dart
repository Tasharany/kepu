import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:rxdart/rxdart.dart';

import '../../const/colors.dart';
import '../../utils.dart';

class SpinWheel3 extends StatefulWidget {
  const SpinWheel3({Key? key}) : super(key: key);

  @override
  State<SpinWheel3> createState() => _SpinWheel3State();
}

class _SpinWheel3State extends State<SpinWheel3> {
  final selected = BehaviorSubject<int>();
  int rewards = 0;

  List<String> items = [
    "Pop", "Rock"," Rhythm", "Blues", "Hip Hop", "Heavy Metal", "Electronic", "Country",
    "Jazz", "Electronic", "Classical", "Funk", "Soul",

  ];

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: FortuneWheel(
                selected: selected.stream,
                animateFirst: false,
                items: [
                  for(int i = 0; i < items.length; i++)...<FortuneItem>{
                    FortuneItem(child: Text(
                        items[i].toString(),
                      style: SafeGoogleFont (
                        'Radio Canada',
                        color: Colors.black87,
                      ),
                    ),
                      style: FortuneItemStyle(
                        color: Colors.white, // <-- custom circle slice fill color
                        borderColor: kepuBlue, // <-- custom circle slice stroke color
                        borderWidth: 2, // <-- custom circle slice stroke width
                      ),
                    ),
                  },
                ],
                onAnimationEnd: () {
                  setState(() {
                    rewards = items[selected.value] as int;
                  });
                  print(rewards);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("You got " + rewards.toString() + "!"),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height:20),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected.add(Fortune.randomInt(0, items.length));
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: kepuYellow,
                    border: Border.all(width: 1.5, color: const Color(0xFF373741)),
                    borderRadius: BorderRadius.circular(5)),
                height: 60,
                width: 200,
                child: Center(
                  child: Text(
                    "spin",
                    style: SafeGoogleFont (
                      'Radio Canada',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}