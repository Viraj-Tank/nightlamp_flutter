import 'package:flutter/material.dart';

/// Trapezoid
class Lamp extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color, gradientColor;
  final bool isSwitchOn;
  final Duration animatedDuration;

  const Lamp({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.color,
    required this.isSwitchOn,
    required this.gradientColor,
    required this.animatedDuration,
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
            AnimatedContainer(
              duration: animatedDuration,
              width: double.infinity,
              height: screenHeight * 0.75,
              decoration: BoxDecoration(
                gradient: isSwitchOn
                    ? LinearGradient(
                        colors: [gradientColor.withOpacity(0.5), gradientColor.withOpacity(0.1)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                    : null,
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
///   below we are clipping the rectangle column into trapezoid

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
