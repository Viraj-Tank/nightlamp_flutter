import 'package:flutter/material.dart';

class LEDBulb extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color onColor, offColor;
  final bool isSwitchOn;
  final Duration animatedDuration = const Duration(seconds: 4000);

  const LEDBulb({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.onColor,
    required this.offColor,
    required this.isSwitchOn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth * 0.1,
      top: screenHeight * 0.35,
      child: AnimatedContainer(
        duration: animatedDuration,
        curve: Curves.ease,
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSwitchOn ? onColor : offColor,
          ),
        ),
      ),
    );
  }
}
