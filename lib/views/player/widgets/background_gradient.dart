import "package:flutter/material.dart";

import '../../../core/constants/colors.dart';


class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              kWhite,
              kWhite.withOpacity(0.6),
              kWhite.withOpacity(0.0),
            ],
            stops: const [
              0.2,
              0.4,
              0.8
            ]).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [kTopColor, kBottomColor],
          ),
        ),
      ),
    );
  }
}
