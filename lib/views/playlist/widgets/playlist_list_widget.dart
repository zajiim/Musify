import "package:flutter/material.dart";

import '../../../core/constants/colors.dart';
import '../../../models/playlist.dart';

class PlaylistListWidget extends StatelessWidget {
  const PlaylistListWidget({
    Key? key,
    required this.playlists,
  }) : super(key: key);

  final Playlist playlists;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: playlists.song.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text(
            "${index + 1}",
            style: const TextStyle(
                fontSize: 16,
                color: kWhite,
                fontWeight: FontWeight.w700),
          ),
          title: Text(
            playlists.song[index].title,
            style: const TextStyle(
                fontSize: 16,
                color: kWhite,
                fontWeight: FontWeight.w700),
          ),
          trailing: const Icon(
            Icons.more_vert_rounded,
            color: kWhite,
          ),
        );
      },
    );
  }
}
