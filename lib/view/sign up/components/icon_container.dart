import 'package:flutter/material.dart';
import 'package:kepu/res/constants.dart';
class IconContainer extends StatelessWidget {
  final Widget widget;
  const IconContainer({super.key, required this.widget});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Container(
      height: 60,
      width: size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
        border: Border.all(
          color: darkOrange
        ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
                color: lightOrange,
                offset: Offset(1,0)
            ),
            BoxShadow(
                color: lightOrange,
                offset: Offset(0,1)
            ),
            BoxShadow(
                color: lightOrange,
                offset: Offset(-1,0)
            ),
            BoxShadow(
                color: lightOrange,
                offset: Offset(0,-1)
            ),
          ]
      ),
      child: widget,
    );
  }
}
