// ignore_for_file: public_member_api_docs, sort_constructors_first
class Song {
  final String title;
  final String description;
  final String url;
  final String coverPic;
  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverPic,
  });

  static List<Song> songs = [
    Song(
        title: 'Mushkurahat',
        description: 'Mitraz',
        url: 'assets/music/song1.m4a',
        coverPic: 'assets/images/mitraz.jpg'),
    Song(
        title: 'If you\'re serious',
        description: 'Chainsmokers',
        url: 'assets/music/song2.m4a',
        coverPic: 'assets/images/chainsmokers.jpg'),
    Song(
        title: 'Roses',
        description: 'Chainsmokers',
        url: 'assets/music/song3.m4a',
        coverPic: 'assets/images/rozes.jpg'),
  ];
}
