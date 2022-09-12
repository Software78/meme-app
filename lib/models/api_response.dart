import 'models.dart';

class ApiResponse {
  final bool status;
  String? message;
  List<MemeModel>? memes;

  ApiResponse({
    required this.status,
    this.memes,
    this.message,
  });
}
