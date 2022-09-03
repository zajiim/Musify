import "package:flutter/material.dart";

import '../../../core/constants/colors.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final String action = "View more";
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 18, color: kWhite, fontWeight: FontWeight.bold),
        ),
        Text(action,
            style: const TextStyle(
                fontSize: 12, color: kWhite, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
