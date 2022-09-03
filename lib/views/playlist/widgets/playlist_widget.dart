import "package:flutter/material.dart";

import '../../../models/playlist.dart';
class PlaylistDisplayWidget extends StatelessWidget {
  const PlaylistDisplayWidget({
    Key? key,
    required this.playlists,
    required this.screenDimension,
  }) : super(key: key);

  final Playlist playlists;
  final Size screenDimension;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            playlists.coverPic,
            height: screenDimension.height * 0.3,
            width: screenDimension.height * 0.3,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          playlists.title,
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
