import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MockUp extends StatelessWidget {
  const MockUp({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: Duration(seconds: 1),
      child: AspectRatio(
        aspectRatio: 375 / 392.98,
        child: SvgPicture.asset(
          image,
        ),
      ),
    );
  }
}