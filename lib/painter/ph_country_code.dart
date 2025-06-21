import 'package:flutter/material.dart';

class PhCountryCode extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black // Customize the color
      ..strokeWidth = 2.0;

    // Draw the plus sign
    canvas.drawLine(Offset(6, 12), Offset(18, 12), paint);
    canvas.drawLine(Offset(12, 6), Offset(12, 18), paint);

    // Draw the number 63
    final textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black, // Customize the color
    );
    final textSpan = TextSpan(
      text: '63',
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(minWidth: 0, maxWidth: size.width);

    textPainter.paint(canvas, Offset(6, 16));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
