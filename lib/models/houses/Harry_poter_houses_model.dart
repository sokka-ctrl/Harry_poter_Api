
import 'package:json_annotation/json_annotation.dart';
part 'Harry_poter_houses_model.g.dart';

@JsonSerializable()

class HarryPoterHousesModel {



  final String house;
  final String emoji;
  final String founder;
  final List<String> color;
  final String animal;

  HarryPoterHousesModel(this.house, this.emoji, this.founder, this.color,this.animal);

  factory HarryPoterHousesModel.fromJson(Map<String, dynamic> json) =>
      _$HarryPoterHousesModelFromJson(json);


}