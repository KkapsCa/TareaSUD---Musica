import '../models/song_model.dart';

abstract class ISongRepository {
  Future<List<Song>> getFavoriteSongs();
  Future<List<Song>> getAlbumList();
}
