
import 'package:json_annotation/json_annotation.dart';

part 'Harry_poter_spells_model.g.dart';

@JsonSerializable()

class HarryPoterSpellsModel {
  final String spell;
  final String use;

  HarryPoterSpellsModel(this.spell, this.use);

  factory HarryPoterSpellsModel.fromJson(Map<String, dynamic> json) =>
      _$HarryPoterSpellsModelFromJson(json);
}