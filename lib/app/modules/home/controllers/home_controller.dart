import 'package:get/get.dart';
import '../../../data/models/song_model.dart';
import '../../../data/repositories/i_song_repository.dart';

class HomeController extends GetxController {
  final ISongRepository _songRepository;

  HomeController(this._songRepository);

  //?funcion para iniciar el controllador
  @override
  void onInit() {
    super.onInit();
    _fetchSongs();
  }

  Future<void> _fetchSongs() async {
    favoriteSongsObs.assignAll(await _songRepository.getFavoriteSongs());
    albumListObs.assignAll(await _songRepository.getAlbumList());
  }

  // Lista para la sección "Favourite Songs"
  RxList<Song> favoriteSongsObs = <Song>[].obs;

  // Lista para la sección "Album"
  RxList<Song> albumListObs = <Song>[].obs;
}
