import "package:flutter/material.dart";
import 'package:just_audio/just_audio.dart';

import '../../../core/constants/colors.dart';

class PlayerButtons extends StatelessWidget {
  const PlayerButtons({
    Key? key,
    required this.audioPlayer,
  }) : super(key: key);

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StreamBuilder<SequenceState?>(
            stream: audioPlayer.sequenceStateStream,
            builder: (context, index) {
              return IconButton(
                  iconSize: 50,
                  onPressed: audioPlayer.hasPrevious
                      ? audioPlayer.seekToPrevious
                      : null,
                  icon: const Icon(
                    Icons.skip_previous,
                    color: kWhite,
                  ));
            }),
        StreamBuilder<PlayerState>(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final playerState = snapshot.data;
              final processingState = (playerState!).processingState;

              if (processingState == ProcessingState.loading ||
                  processingState == ProcessingState.buffering) {
                return Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.all(10),
                  child: const CircularProgressIndicator(
                    strokeWidth: 2,
                    color: kTopColor,
                  ),
                );
              } else if (!audioPlayer.playing) {
                return IconButton(
                  iconSize: 65,
                  onPressed: audioPlayer.play,
                  icon: const Icon(
                    Icons.play_circle_filled_rounded,
                    color: kWhite,
                  ),
                );
              } else if (processingState != ProcessingState.completed) {
                return IconButton(
                    iconSize: 65,
                    onPressed: audioPlayer.pause,
                    icon: const Icon(
                      Icons.pause_circle_filled,
                      color: kWhite,
                    ));
              } else {
                return IconButton(
                    iconSize: 65,
                    onPressed: () => audioPlayer.seek(
                          Duration.zero,
                          index: audioPlayer.effectiveIndices!.first,
                        ),
                    icon: const Icon(
                      Icons.replay_circle_filled,
                      color: kWhite,
                    ));
              }
            } else {
              return const CircularProgressIndicator(
                strokeWidth: 2,
                color: kTopColor,
              );
            }
          },
        ),
        StreamBuilder<SequenceState?>(
            stream: audioPlayer.sequenceStateStream,
            builder: (context, index) {
              return IconButton(
                  iconSize: 50,
                  onPressed:
                      audioPlayer.hasNext ? audioPlayer.seekToNext : null,
                  icon: const Icon(
                    Icons.skip_next,
                    color: kWhite,
                  ));
            }),
      ],
    );
  }
}
