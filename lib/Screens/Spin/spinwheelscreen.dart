import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:rxdart/rxdart.dart';

import '../../const/colors.dart';
import '../../utils.dart';

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);

  @override
  State<SpinWheel> createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  final selected = BehaviorSubject<int>();
  int rewards = 0;

  List<int> items = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
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
                        borderColor: kepuDarkPink, // <-- custom circle slice stroke color
                        borderWidth: 2, // <-- custom circle slice stroke width
                      ),
                    ),
                  },
                ],
                onAnimationEnd: () {
                  setState(() {
                    rewards = items[selected.value];
                  });
                  print(rewards);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("You got #" + rewards.toString() + "!"),
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
