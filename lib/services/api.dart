import '../utils/utils.dart';

class ApiService {
  ApiService._internal();

  static final ApiService _instance = ApiService._internal();

  factory ApiService() => _instance;

  final String _url = 'http://alpha-meme-maker.herokuapp.com';
  final String _databaseUrl = 'https://meme-maker-app.herokuapp.com/';

  Future<ApiResponse> getMemes({int page = 1}) async {
    try {
      Response response = await get(Uri.parse('$_url/$page'));

      if (response.statusCode == 200) {
        final results = jsonDecode(response.body)['data'] as List;
        List<MemeModel> memes =
            results.map((e) => MemeModel.fromJson(e)).toList();
        return ApiResponse(status: true, memes: memes);
      } else {
        return ApiResponse(
            status: false, message: jsonDecode(response.body)['message']);
      }
    } catch (e) {
      return ApiResponse(status: false, message: 'An error occured');
    }
  }

  Future<int> getCount() async {
    Response response = await get(Uri.parse(_databaseUrl));
    return await jsonDecode(response.body)['count'];
  }

  Future<ApiResponse> getMemesFromApi() async {
    try {
      int count = await getCount();
      Response response =
          await get(Uri.parse('$_databaseUrl?offset=0&limit=$count'));
      final results = await jsonDecode(response.body)['results'] as List;
      List<MemeModel> memes =
          results.map((e) => MemeModel.fromJson(e)).toList();
      return ApiResponse(
        status: true,
        memes: memes,
      );
    } catch (e) {
      return ApiResponse(
        status: false,
        message: 'An error occured',
      );
    }
  }

  Future<File> getFile(String? path) async {
    return File(path!);
  }

  saveMemeToApi(MemeModel model) async {
    String? imageId = await ImageDownloader.downloadImage(model.image);
    String? path = await ImageDownloader.findPath(imageId!);
    File file = await getFile(path);

    try {
      var request = MultipartRequest(
          'POST', Uri.parse('https://meme-maker-app.herokuapp.com/add/'));
      request.files.add(await MultipartFile.fromPath('image', file.path));
      request.fields.addAll({
        "name": model.name,
        "tags": "no tag",
        "topText": model.topText!,
        "bottomText": model.bottomText!,
      });
      StreamedResponse response = await request.send();
      Map<String, dynamic> resbody =
          json.decode(await response.stream.bytesToString());

      return response.statusCode;
    } on Exception {
      return 404;
    }
  }
}
