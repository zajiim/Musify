import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:music_app_ui/core/constants/constants.dart';

import '../../../core/constants/colors.dart';
import '../../../models/playlist.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/playlist', arguments: playlist);
      },
      child: Container(
        decoration: BoxDecoration(
          color: kTopColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            k10Width,
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                playlist.coverPic,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            k20Width,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    playlist.title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${playlist.song.length} songs',
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 12,
                      color: kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle_fill_outlined,
                  color: kWhite,
                ))
          ],
        ),
      ),
    );
  }
}
