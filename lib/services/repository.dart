import '../utils/utils.dart';
import 'api.dart';

class Repository {
  Repository._internal();

  static final Repository _instance = Repository._internal();

  factory Repository() => _instance;
  final ApiService _apiService = ApiService();

  Future<ApiResponse> loadMemes(int page) async {
    return await _apiService.getMemes(page: page);
  }

  submitMeme(MemeModel model) async {
    await _apiService.saveMemeToApi(model);
    Get.offAll(() => const HomeScreen());
  }

  Future<ApiResponse> localMemes() async {
    return await _apiService.getMemesFromApi();
  }
}
