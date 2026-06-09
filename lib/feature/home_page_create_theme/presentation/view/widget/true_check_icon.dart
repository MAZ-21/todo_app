import 'package:flutter/material.dart';

class TrueCheckIcon extends StatelessWidget {
  const TrueCheckIcon({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Icon(
        Icons.check_rounded,
        color: Colors.white,
      ),
    );
  }
}