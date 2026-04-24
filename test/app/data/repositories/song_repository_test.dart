import 'package:flutter_test/flutter_test.dart';
import 'package:tarea_sud/app/data/repositories/song_repository.dart';

void main() {
  group('SongRepository tests', () {
    test('getFavoriteSongs returns list of songs', () async {
      final repository = SongRepository();
      final songs = await repository.getFavoriteSongs();
      expect(songs.isNotEmpty, true);
    });

    test('getAlbumList returns list of songs', () async {
      final repository = SongRepository();
      final albums = await repository.getAlbumList();
      expect(albums.isNotEmpty, true);
    });
  });
}
