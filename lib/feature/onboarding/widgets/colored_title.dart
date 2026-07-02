import 'package:flutter/material.dart';

class ColoredTitle extends StatelessWidget {
  final String title;
  final TextStyle style;
  final Color lastWordColor;

  const ColoredTitle({
    super.key,
    required this.title,
    required this.style,
    required this.lastWordColor,
  });

  @override
  Widget build(BuildContext context) {
    final words = title.trim().split(' ');

    if (words.length == 1) {
      return Text(
        title,
        style: style.copyWith(color: lastWordColor),
        textAlign: TextAlign.center,
      );
    }

    final lastWord = words.removeLast();
    final firstPart = words.join(' ');

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: '$firstPart ', style: style),
          TextSpan(
            text: lastWord,
            style: style.copyWith(color: lastWordColor),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
