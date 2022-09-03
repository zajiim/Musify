import "package:flutter/material.dart";
import 'package:music_app_ui/core/constants/colors.dart';
import 'package:music_app_ui/core/constants/constants.dart';
import 'package:music_app_ui/models/playlist.dart';
import 'package:music_app_ui/views/home/widgets/appbar_widget.dart';
import 'package:music_app_ui/views/home/widgets/bottom_nav_bar.dart';
import 'package:music_app_ui/views/home/widgets/search_widget.dart';
import 'package:music_app_ui/views/home/widgets/title_widget.dart';

import '../../models/song.dart';
import 'widgets/media_card_widget.dart';
import 'widgets/playlist_card_widget.dart';
import 'widgets/trending_music_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenDimension = MediaQuery.of(context).size;
    List<Song> songs = Song.songs;
    List<Playlist> playlists = Playlist.playlists;
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
        appBar: const AppBarWidget(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome User",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  k10Height,
                  const Text(
                    "Enjoy your favorite music",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  k5Height,
                  const SearchWidget(),
                  k20Height,
                  TrendingMusic(
                    screenDimension: screenDimension,
                    songs: songs,
                  ),
                  Column(
                    children: [
                      const TitleWidget(title: "Playlist"),
                      k10Height,
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: playlists.length,
                        itemBuilder: (context, index) {
                          return PlaylistCard(playlist: playlists[index]);
                        },
                        separatorBuilder: (context, index) => k10Height,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavBarWidget(),
      ),
    );
  }
}
