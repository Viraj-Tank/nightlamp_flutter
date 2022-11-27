import 'package:flutter/material.dart';
import 'package:nightlamp_flutter/utils/color_constants.dart';
import 'package:nightlamp_flutter/widget/lamp_hanger_rope.dart';

import '../widget/lamp.dart';

class LivingHomePage extends StatelessWidget {
  const LivingHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          LampHangerRope(screenWidth: screenWidth, screenHeight: screenHeight, color: darkGray),
          Lamp(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            color: darkGray,
            isSwitchOn: false,
            startColor: gradientStartColor,
            endColor: gradientEndColor,
          )
        ],
      ),
    );
  }
}
