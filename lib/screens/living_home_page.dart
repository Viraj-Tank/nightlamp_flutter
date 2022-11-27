import 'package:flutter/material.dart';
import 'package:nightlamp_flutter/utils/color_constants.dart';
import 'package:nightlamp_flutter/widget/lamp_hanger_rope.dart';
import 'package:nightlamp_flutter/widget/lamp_switch.dart';
import 'package:nightlamp_flutter/widget/room_name.dart';

import '../widget/LEDBulb.dart';
import '../widget/lamp.dart';
import '../widget/lamp_switch_rope.dart';

class LivingHomePage extends StatefulWidget {
  const LivingHomePage({Key? key}) : super(key: key);

  @override
  State<LivingHomePage> createState() => _LivingHomePageState();
}

class _LivingHomePageState extends State<LivingHomePage> {
  var _isSwitchOn = true;

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
            gradientColor: bulbOnColor,
            animatedDuration: animationDuration,
          ),
          LampSwitch(
            onTap: () {
              setState(() {
                _isSwitchOn = !_isSwitchOn;
              });
            },
            isSwitchOn: _isSwitchOn,
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            animationDuration: animationDuration,
            toggleOffColor: bulbOffColor,
            toggleOnColor: bulbOnColor,
            color: darkGray,
          ),
          LampSwitchRope(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            animatedDuration: animationDuration,
          ),
          RoomName(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            color: darkGray,
            roomName: 'LIVING ROOM',
          )
        ],
      ),
    );
  }
}
