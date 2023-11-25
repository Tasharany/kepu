import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Screens/MainScreen.dart';
import '../utils.dart';


class FirstExample extends StatefulWidget {

  @override
  State<FirstExample> createState() => _FirstExampleState();
}

class _FirstExampleState extends State<FirstExample> {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MaterialApp(
      // Provide the [TabController]
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                SegmentedTabControl(
                  // Customization of widget
                  radius: const Radius.circular(5),
                  backgroundColor: Colors.purple.shade300,
                  indicatorColor: Colors.orange.shade200,
                  tabTextColor: Colors.black45,
                  selectedTabTextColor: Colors.white,
                  squeezeIntensity: 2,
                  height: 79*ffem,
                  tabPadding: const EdgeInsets.symmetric(horizontal: 8),
                  textStyle: SafeGoogleFont ('Radio Canada',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2*ffem/fem,
                    letterSpacing: 0.18*fem,),
                  // Options for selection
                  // All specified values will override the [SegmentedTabControl] setting
                  tabs: [
                    SegmentTab(
                      label: 'Movies',
                      // color: Colors.red.shade200,
                      backgroundColor: Colors.red.shade200,
                      selectedTextColor: Colors.white,
                    ),
                    SegmentTab(
                      label: 'Games',
                      backgroundColor: Colors.green.shade100,
                      selectedTextColor: Colors.white,
                    ),
                    SegmentTab(
                      label: 'Music',
                      backgroundColor: Colors.blue.shade100,
                      selectedTextColor: Colors.white,
                    ),
                  ],
                ),
                // Sample pages
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      MainScreen(),
                      SampleWidget(
                        label: 'SECOND PAGE',
                        color: Colors.green.shade100,
                      ),
                      SampleWidget(
                        label: 'THIRD PAGE',
                        color: Colors.blue.shade100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class SampleWidget extends StatelessWidget {
  const SampleWidget({
    Key? key,
    required this.label,
    required this.color,
  }) : super(key: key);

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(10))),
      child: Text(label),
    );
  }
}

