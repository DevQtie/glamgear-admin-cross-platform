import 'package:flutter/material.dart';

@immutable
class WidgetShakerHelper extends StatelessWidget { // reserved
  final GlobalKey key1;
  final Duration duration;
  final double deltaX;
  final Widget child;
  final Curve curve;

  WidgetShakerHelper({
    super.key,
    this.duration = const Duration(milliseconds: 500),
    this.deltaX = 20,
    this.curve = Curves.bounceInOut,
    required this.key1,
    required this.child,
  });

  /// convert 0-1 to 0-1-0
  double shake(double animation) =>
      2 * (0.5 - (0.5 - curve.transform(animation)).abs());

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      key: key1,
      tween: Tween(begin: 1.0, end: 0.0),
      duration: duration,
      builder: (context, animation, child) => Transform.translate(
        offset: Offset(deltaX * shake(animation), 0),
        child: child,
      ),
      child: child,
    );
  }
} // subject for inspection