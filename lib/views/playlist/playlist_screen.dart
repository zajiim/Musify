import "package:flutter/material.dart";
import 'package:music_app_ui/core/constants/constants.dart';
import 'package:music_app_ui/models/playlist.dart';
import 'package:music_app_ui/views/playlist/widgets/playlist_list_widget.dart';
import 'package:music_app_ui/views/playlist/widgets/playlist_widget.dart';

import '../../core/constants/colors.dart';
import 'widgets/play_shuffle_tab_widget.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenDimension = MediaQuery.of(context).size;
    Playlist playlists = Playlist.playlists[0];
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              kTopColor.withOpacity(0.3),
              kBottomColor.withOpacity(0.9)
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Playlist"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlaylistDisplayWidget(
                    playlists: playlists, screenDimension: screenDimension),
                k20Height,
                const PlayShuffleTab(),
                k20Height,
                PlaylistListWidget(playlists: playlists),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
