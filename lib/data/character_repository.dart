import 'package:dio/dio.dart';
import 'package:harry_poter/models/character/Harry_model.dart';

class Repository{

  Future<List<HarryModel>> getHttp() async {
    final dio = Dio();
    final response = await dio.get(
      'https://potterapi-fedeperin.vercel.app/en/characters',
    );
    final data = response.data;
    final List<HarryModel> list = (data as List)
        .map((item) => HarryModel.fromJson(item as Map<String, dynamic>))
        .toList();
    return list;
  }

}