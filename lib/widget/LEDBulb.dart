import 'package:flutter/material.dart';

class LEDBulb extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color onColor, offColor;
  final bool isLEDOn;
  final Duration animationDuration = const Duration(milliseconds: 2000);

  const LEDBulb({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.onColor,
    required this.offColor,
    required this.isLEDOn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth * 0.1,
      top: screenHeight * 0.35,
      child: AnimatedContainer(
        duration: animationDuration,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isLEDOn ? onColor : offColor,
        ),
      ),
    );
  }
}
