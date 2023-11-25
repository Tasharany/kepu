import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kepu/view_model/controller/home_controller.dart';
import 'components/back_decoration.dart';
import 'package:kepu/Widgets/BottomNavBar.dart';
import 'components/floating_action.dart';
import 'components/task_page_holder.dart';
import 'components/upper_body.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(HomeController());
  ScrollController _scrollController = ScrollController();
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          const BackColors(),
          SafeArea(
            child: Scaffold(
                floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                bottomNavigationBar: AnimatedBuilder(
                animation: _scrollController,
                builder: ((context, child) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: isVisible ? 75 : 0,
                    child: BottomNavBar(
                      currentIndex: 0,
                    ),
                  );
                })),
                backgroundColor: Colors.transparent,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UperBody(),
                    const Expanded(
                      child: TaskPageBody(),
                    ),

                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}



