import "package:flutter/material.dart";
import 'package:just_audio/just_audio.dart';
import 'package:music_app_ui/core/constants/colors.dart';
import 'package:music_app_ui/core/constants/constants.dart';

import '../../../models/song.dart';
import 'player_buttons.dart';
import 'seekbar_widget.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({
    Key? key,
    required Stream<SeekBarData> seekBarDataStream,
    required this.audioPlayer,
    required this.song,
  })  : _seekBarDataStream = seekBarDataStream,
        super(key: key);
  final Song song;
  final Stream<SeekBarData> _seekBarDataStream;
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            song.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: kWhite.withOpacity(0.5)),
          ),
          k10Height,
          Text(
            song.description,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kWhite.withOpacity(0.9)),
          ),
          k20Height,
          k10Height,
          StreamBuilder<SeekBarData>(
            stream: _seekBarDataStream,
            builder: (context, snapshot) {
              final positionData = snapshot.data;
              return SeekBar(
                position: positionData?.position ?? Duration.zero,
                duration: positionData?.duration ?? Duration.zero,
                onChangedEnd: audioPlayer.seek,
              );
            },
          ),
          PlayerButtons(audioPlayer: audioPlayer),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: 28,
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: kWhite,
                ),
              ),
              IconButton(
                iconSize: 28,
                onPressed: () {},
                icon: const Icon(
                  Icons.cloud_download,
                  color: kWhite,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
