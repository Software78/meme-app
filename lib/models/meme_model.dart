import '../utils/utils.dart';

part 'meme_model.g.dart';

@Collection()
class MemeModel {
  @Id()
  int? id;
  
  String? bottomText;
  String? topText;
  final String image;
  final String name;
 

  MemeModel({
    this.id,
    required this.image,
    required this.name,
    
    this.bottomText,
   
    this.topText,
  });

  factory MemeModel.fromJson(Map<String, dynamic> json) => MemeModel(
        id: json['ID'],
        image: json['image'],
        name: json['name'],
       
        bottomText: json['bottomText'],
        topText: json['topText'],
      );
}
