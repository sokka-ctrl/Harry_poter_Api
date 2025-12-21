import 'package:dio/dio.dart';
import 'package:harry_poter/models/spells/Harry_poter_spells_model.dart';

class SpellsRepository {

  Future<List<HarryPoterSpellsModel>> getSpells() async {
    final dio = Dio();
    final response = await dio.get(
      'https://potterapi-fedeperin.vercel.app/en/spells',
    );
    final data = response.data;
    final List<HarryPoterSpellsModel> list = (data as List)
        .map((item) => HarryPoterSpellsModel.fromJson(item as Map<String, dynamic>))
        .toList();
    return list;
  }

}