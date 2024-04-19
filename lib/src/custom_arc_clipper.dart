import 'package:flutter/material.dart';
///left
class CustomArcLeftClipper extends CustomClipper<Path> {
  final double arcWidth;
  CustomArcLeftClipper(this.arcWidth);
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(arcWidth, 0)
      ..quadraticBezierTo(
          0, size.height / 2, arcWidth, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
///bottom
class CustomArcBottomClipper extends CustomClipper<Path> {
  final double arcHeight;

  CustomArcBottomClipper(this.arcHeight);

  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height - arcHeight)
      ..quadraticBezierTo(
          size.width / 2, size.height, size.width, size.height - arcHeight)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>false;
}
///top
class CustomArcTopClipper extends CustomClipper<Path> {
  final double arcHeight;

  CustomArcTopClipper(this.arcHeight);

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, arcHeight)
      ..quadraticBezierTo(
          size.width / 2, 0, size.width, arcHeight)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
///right
class CustomArcRightClipper extends CustomClipper<Path> {
  final double arcWidth;

  CustomArcRightClipper(this.arcWidth);

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width - arcWidth, 0)
      ..quadraticBezierTo(
          size.width, size.height / 2, size.width - arcWidth, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}