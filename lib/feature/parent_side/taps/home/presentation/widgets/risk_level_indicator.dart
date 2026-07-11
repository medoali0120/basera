import 'dart:math';
import 'package:basera/feature/parent_side/taps/home/presentation/widgets/risk_painter.dart';
import 'package:flutter/material.dart';

class RiskLevelIndicator extends StatefulWidget {
  const RiskLevelIndicator({super.key, required this.percentage});

  final int percentage;

  @override
  State<RiskLevelIndicator> createState() => _RiskLevelIndicatorState();
}

class _RiskLevelIndicatorState extends State<RiskLevelIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: AnimatedBuilder(
        animation: controller,
        builder: (_, __) {
          return CustomPaint(
            painter: RiskPainter(controller.value),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "${widget.percentage}%",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "RISK LEVEL",
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
