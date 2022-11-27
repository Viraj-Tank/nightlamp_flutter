import 'package:flutter/material.dart';

class LampSwitchRope extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color;
  final bool isSwitchOn;
  final Duration animatedDuration;

  const LampSwitchRope({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.color,
    required this.isSwitchOn,
    required this.animatedDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: animatedDuration,
      top: screenHeight * 0.4,
      bottom: screenHeight * (isSwitchOn ? 0.34 : 0.38),
      width: 2,
      right: screenWidth * 0.5 - 1,
      child: Container(
        color: color,
      ),
    );
  }
}
