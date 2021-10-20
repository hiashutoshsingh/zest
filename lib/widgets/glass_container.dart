import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  const GlassContainer({
    this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: width,
      height: height,
      borderRadius: 0,
      blur: 10,
      alignment: Alignment.bottomCenter,
      border: 0,
      linearGradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
        Color(0xFFffffff).withOpacity(0.1),
        Color(0xFFFFFFFF).withOpacity(0.05),
      ], stops: [
        0.1,
        1
      ]),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFffffff).withOpacity(0.5),
          Color((0xFFFFFFFF)).withOpacity(0.5),
        ],
      ),
      child: child,
    );
  }
}
