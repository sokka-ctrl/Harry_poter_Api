// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Harry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarryModel _$HarryModelFromJson(Map<String, dynamic> json) => HarryModel(
  json['fullName'] as String,
  json['image'] as String,
  json['nickname'] as String,
  json['hogwartsHouse'] as String,
  json['interpretedBy'] as String,
  json['birthdate'] as String,
);

Map<String, dynamic> _$HarryModelToJson(HarryModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'image': instance.image,
      'nickname': instance.nickname,
      'hogwartsHouse': instance.hogwartsHouse,
      'interpretedBy': instance.interpretedBy,
      'birthdate': instance.birthdate,
    };
