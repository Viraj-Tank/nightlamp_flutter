import 'package:flutter/material.dart';

class RoomName extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color;
  final String roomName;

  const RoomName({Key? key, required this.screenWidth, required this.screenHeight, required this.color, required this.roomName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenHeight * 0.15,
      width: screenWidth,
      child: Center(
        child: Transform.rotate(
          angle: -1.58,
          child: Text(
            roomName,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
          ),
        ),
      ),
    );
  }
}
