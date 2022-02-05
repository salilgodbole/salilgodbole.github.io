import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double height;
  final double width;

  AppLogo({this.height = 40, this.width = 120});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kMinDefaultPadding,
      child: Image.asset(
        "assets/images/logos/logo_with_text_transparent.png",
        fit: BoxFit.contain,
        width: width,
        height: height,
      ),
    );
  }
}