import 'dart:math';
import 'package:flutter/material.dart';

class RiskPainter extends CustomPainter {
  final double progress;

  RiskPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.width / 2 - 6;

    final borderPaint = Paint()
      ..color = const Color(0xff1F6AA5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    canvas.drawCircle(center, radius, borderPaint);

    final angle = progress * 2 * pi - pi / 2;

    final point = Offset(
      center.dx + radius * cos(angle),
      center.dy + radius * sin(angle),
    );

    final glow = Paint()
      ..color = const Color(0xff49D6FF)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);

    canvas.drawCircle(point, 5, glow);

    canvas.drawCircle(point, 4, Paint()..color = const Color(0xff49D6FF));
  }

  @override
  bool shouldRepaint(covariant RiskPainter oldDelegate) => true;
}
