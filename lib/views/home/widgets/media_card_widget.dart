import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:music_app_ui/core/constants/colors.dart';

import '../../../models/song.dart';

class MediaCard extends StatelessWidget {
  const MediaCard({
    Key? key,
    required this.screenDimension,
    required this.song,
  }) : super(key: key);

  final Size screenDimension;
  final Song song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/player', arguments: song);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: screenDimension.width * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(
                    song.coverPic,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 50,
              width: screenDimension.width * 0.40,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kWhite.withOpacity(
                  0.7,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        song.title,
                        style: TextStyle(
                          color: kTopColor.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        song.description,
                        style: const TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_circle,
                        color: kTopColor,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
