import 'package:json_annotation/json_annotation.dart';

part 'Harry_model.g.dart';


@JsonSerializable()
class HarryModel {
  final String fullName;
  final String image;
  final String nickname;
  final String hogwartsHouse;
  final String interpretedBy;
  final String birthdate;


  HarryModel(this.fullName, this.image, this.nickname, this.hogwartsHouse, this.interpretedBy, this.birthdate);

  factory HarryModel.fromJson(Map <String, dynamic> json) => _$HarryModelFromJson(json);
}