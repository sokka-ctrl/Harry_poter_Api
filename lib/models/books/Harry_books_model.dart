import 'package:json_annotation/json_annotation.dart';

part 'Harry_books_model.g.dart';

@JsonSerializable()
class HarryBooksModel {
  final int number;
  final String title;
  final String originalTitle;
  final String releaseDate;
  final String description;
  final int pages;
  final String cover;

  HarryBooksModel(
      this.number,
      this.title,
      this.originalTitle,
      this.releaseDate,
      this.description,
      this.pages,
      this.cover,
      );

  factory HarryBooksModel.fromJson(Map<String, dynamic> json) =>
      _$HarryBooksModelFromJson(json);

  Map<String, dynamic> toJson() => _$HarryBooksModelToJson(this);
}
