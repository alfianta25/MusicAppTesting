import 'package:music_player_app/feature/musicplayerhome/model/response.dart';

class Songs extends Response<Songs> {
  final String artistName;
  final String collectionName;
  final String trackName;
  final String artworkUrl;
  final String previewUrl;

  Songs({
    this.artistName,
    this.collectionName,
    this.trackName,
    this.artworkUrl,
    this.previewUrl,
  });

  @override
  Songs fromJsonMap(Map<String, dynamic> json) => Songs(
        artistName: json['artistName'],
        collectionName: json['collectionName'],
        trackName: json['trackName'],
        artworkUrl: json['artworkUrl100'],
        previewUrl: json['previewUrl'],
      );

  @override
  Map<String, dynamic> toJsonMap() => {
        'artistName': artistName,
        'collectionName': collectionName,
        'trackName': trackName,
        'artworkUrl100': artworkUrl,
        'previewUrl': previewUrl,
      };
}
