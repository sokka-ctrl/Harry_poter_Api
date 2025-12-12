// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Harry_books_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarryBooksModel _$HarryBooksModelFromJson(Map<String, dynamic> json) =>
    HarryBooksModel(
      (json['number'] as num).toInt(),
      json['title'] as String,
      json['originalTitle'] as String,
      json['releaseDate'] as String,
      json['description'] as String,
      (json['pages'] as num).toInt(),
      json['cover'] as String,
    );

Map<String, dynamic> _$HarryBooksModelToJson(HarryBooksModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'releaseDate': instance.releaseDate,
      'description': instance.description,
      'pages': instance.pages,
      'cover': instance.cover,
    };
