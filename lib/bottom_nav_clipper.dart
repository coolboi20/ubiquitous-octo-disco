
import 'package:flutter/material.dart';

class BottomNavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double circleRadius = 34;
    final double barheight = size.height;
    // circle radius
    final double circleOffset = (size.width / 2) - circleRadius;

    final path = Path();
    // start top left, with some rounding
    path.moveTo(0, 20);

    // top-left rounded corner
    path.quadraticBezierTo(0, 0, 20, 0);

    // draw line to start of semi-circle dip
    path.lineTo(circleOffset - 10, 0);

    // smooth curve going into the dip
    path.quadraticBezierTo(
        circleOffset, // x1
        0, // control point for smooth entry y1
        circleOffset, // x2
        10 // start of the semi-circle dip y2
        );

    // draw semi-circle dip
    path.arcToPoint(
      Offset(circleOffset + (2 * circleRadius), 0),
      radius: const Radius.circular(circleRadius),
      clockwise: false,
    );

    // smooth curve exiting the dip
    path.quadraticBezierTo(
        circleOffset + circleRadius + 10, // x1
        15, // y1
        circleOffset + (2 * circleRadius), // x2
        0 // y2
    );

    // Line to the end of the top edge
    path.lineTo(size.width - 20, 0);

    // Top-right rounded corner
    path.quadraticBezierTo(size.width, 0, size.width, 20);

    // Draw right edge
    path.lineTo(size.width, barheight);

    // bottom right corner
    path.lineTo(0, barheight);

    // bottom left corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
