import 'package:dio/dio.dart';
import 'package:harry_poter/models/houses/Harry_poter_houses_model.dart';

class HousesRepository {


  Future<List<HarryPoterHousesModel>> getHouses() async {
    final dio = Dio();
    final response = await dio.get(
      'https://potterapi-fedeperin.vercel.app/en/houses',
    );
    final data = response.data;
    final List<HarryPoterHousesModel> list = (data as List)
        .map((item) => HarryPoterHousesModel.fromJson(item as Map<String, dynamic>))
        .toList();
    return list;
  }

}