import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LightText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final String font;
  final TextOverflow textOverflow;

  const LightText({
    super.key,
    required this.text,
    this.size = 20,
    this.color = Colors.white,
    this.font = "font30",
    this.textOverflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      style: TextStyle(fontSize: size, color: color, fontFamily: font),
    );
  }
}
