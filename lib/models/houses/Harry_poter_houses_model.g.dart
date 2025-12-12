// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Harry_poter_houses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarryPoterHousesModel _$HarryPoterHousesModelFromJson(
  Map<String, dynamic> json,
) => HarryPoterHousesModel(
  json['house'] as String,
  json['emoji'] as String,
  json['founder'] as String,
  (json['color'] as List<dynamic>).map((e) => e as String).toList(),
  json['animal'] as String,
);

Map<String, dynamic> _$HarryPoterHousesModelToJson(
  HarryPoterHousesModel instance,
) => <String, dynamic>{
  'house': instance.house,
  'emoji': instance.emoji,
  'founder': instance.founder,
  'color': instance.color,
  'animal': instance.animal,
};
