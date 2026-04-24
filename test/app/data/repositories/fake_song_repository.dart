import 'package:tarea_sud/app/data/models/song_model.dart';
import 'package:tarea_sud/app/data/repositories/i_song_repository.dart';

class FakeSongRepository implements ISongRepository {
  List<Song> favoriteSongs = [];
  List<Song> albumList = [];

  @override
  Future<List<Song>> getFavoriteSongs() async {
    return favoriteSongs;
  }

  @override
  Future<List<Song>> getAlbumList() async {
    return albumList;
  }
}
