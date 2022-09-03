import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_ui/core/constants/colors.dart';
import 'package:music_app_ui/views/home/home_screen.dart';
import 'package:music_app_ui/views/player/player_screen.dart';
import 'package:music_app_ui/views/playlist/playlist_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Musify",
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: kWhite,
                displayColor: kWhite,
              )),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/player', page: () => const PlayerScreen()),
        GetPage(name: '/playlist', page: () => const PlaylistScreen()),
      ],
    );
  }
}
