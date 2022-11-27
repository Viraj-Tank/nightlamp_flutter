import 'package:flutter/material.dart';

/// Trapezoid
class Lamp extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color, startColor, endColor;
  final bool isSwitchOn;

  const Lamp({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.color,
    required this.isSwitchOn,
    required this.startColor,
    required this.endColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.15,
      left: -screenWidth * 0.95,
      width: screenWidth * 2.1,
      child: ClipPath(
        clipper: TrapezoidClipper(),
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.25,
              color: color,
            ),
            Container(
              height: screenHeight * 0.75,
              decoration: BoxDecoration(
                gradient: isSwitchOn ? LinearGradient(colors: [startColor, endColor], begin: Alignment.topCenter, end: Alignment.bottomCenter) : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///       ****
///      *    *
///     *      *
///    *        *
///   ************
///
///   TRAPEZOID (lamp widget)

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.3, 0); // move to top left corner for trapezoid
    path.lineTo(0, size.height); // draw line to bottom left for trapezoid
    path.lineTo(size.width, size.height); // draw line to bottom right for trapezoid
    path.lineTo(size.width * 0.7, 0); // draw line to top right for trapezoid
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
