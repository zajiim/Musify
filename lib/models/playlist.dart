import 'package:music_app_ui/models/song.dart';

class Playlist {
  final String title;
  final List<Song> song;
  final String coverPic;

  Playlist({
    required this.title,
    required this.song,
    required this.coverPic,
  });
  static List<Playlist> playlists = [
    Playlist(
      title: "Edm",
      song: Song.songs,
      coverPic:
          'https://www.ikmultimedia.com/products/stedm/main-banner/mobile.jpg',
    ),
    Playlist(
      title: "Pop",
      song: Song.songs,
      coverPic: 'https://i.ytimg.com/vi/0CWUFzbXVJg/maxresdefault.jpg',
    ),
    Playlist(
      title: "RnB",
      song: Song.songs,
      coverPic:
          'https://image.shutterstock.com/image-photo/pink-neon-sign-rnb-club-260nw-1992688202.jpg',
    ),
    Playlist(
      title: "RnB",
      song: Song.songs,
      coverPic:
          'https://image.shutterstock.com/image-photo/pink-neon-sign-rnb-club-260nw-1992688202.jpg',
    ),
    Playlist(
      title: "Indie",
      song: Song.songs,
      coverPic:
          'https://thumbs.dreamstime.com/b/indie-rock-music-vintage-styled-badge-design-template-your-poster-flyer-banner-vector-illustration-t-shirt-105311238.jpg',
    ),
  ];
}
