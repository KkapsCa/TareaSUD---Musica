import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:tarea_sud/app/data/models/song_model.dart';
import 'package:tarea_sud/app/modules/home/controllers/home_controller.dart';
import '../../../data/repositories/fake_song_repository.dart';

void main() {
  group('HomeController tests', () {
    late FakeSongRepository fakeSongRepository;
    late HomeController homeController;

    setUp(() {
      fakeSongRepository = FakeSongRepository();
      
      // Setup fake data
      fakeSongRepository.favoriteSongs = [
        const Song(title: 'Test Song 1', artist: 'Artist 1', duration: '03:00', imagePath: 'path1', album: 'Album 1'),
      ];
      fakeSongRepository.albumList = [
        const Song(title: 'Test Album Song 1', artist: 'Artist 2', duration: '04:00', imagePath: 'path2', album: 'Album 2'),
      ];
      
      homeController = HomeController(fakeSongRepository);
    });

    test('Loads data on init', () async {
      // Since _fetchSongs is called in onInit, we need to trigger it manually if not using Get.put, 
      // or rely on Get.put to handle the lifecycle.
      // Let's use Get.put to properly initialize the controller.
      Get.put(homeController);

      // Wait for async operations
      // Since it's a future and we don't have a way to await it directly, 
      // we might need to wait for the next tick.
      await Future.delayed(Duration.zero);
      
      expect(homeController.favoriteSongsObs.length, 1);
      expect(homeController.favoriteSongsObs.first.title, 'Test Song 1');
      expect(homeController.albumListObs.length, 1);
      expect(homeController.albumListObs.first.title, 'Test Album Song 1');
      
      Get.delete<HomeController>();
    });
  });
}
