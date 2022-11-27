import 'package:flutter/material.dart';
import 'package:nightlamp_flutter/utils/color_constants.dart';
import 'package:nightlamp_flutter/widget/lamp_hanger_rope.dart';

import '../widget/LEDBulb.dart';
import '../widget/lamp.dart';

class LivingHomePage extends StatelessWidget {
  final _isSwitchOn = false;
  const LivingHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          LampHangerRope(screenWidth: screenWidth, screenHeight: screenHeight, color: darkGray),
          LEDBulb(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            onColor: bulbOnColor,
            offColor: bulbOffColor,
            isSwitchOn: _isSwitchOn,
          ),
          Lamp(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            gradientColor: bulbOnColor, animatedDuration: animationDuration,
          ),
        ],
      ),
    );
  }
}
