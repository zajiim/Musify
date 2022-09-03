import "package:flutter/material.dart";
import 'package:music_app_ui/views/home/widgets/title_widget.dart';

import '../../../core/constants/constants.dart';
import '../../../models/song.dart';
import 'media_card_widget.dart';

class TrendingMusic extends StatelessWidget {
  const TrendingMusic({
    Key? key,
    required this.screenDimension,
    required this.songs,
  }) : super(key: key);

  final Size screenDimension;
  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const TitleWidget(
          title: "Trending Now",
        ),
        k20Height,
        SizedBox(
          height: screenDimension.height * 0.27,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: songs.length,
            itemBuilder: (context, index) {
              return MediaCard(
                screenDimension: screenDimension,
                song: songs[index],
              );
            },
          ),
        ),
        k20Height,
      ],
    );
  }
}
