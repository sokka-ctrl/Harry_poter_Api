import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harry_poter/models/houses/Harry_poter_houses_model.dart';
import 'package:harry_poter/uimodels/Houses_models.dart';

class HarryPoterHousesScreen extends StatefulWidget {
  const HarryPoterHousesScreen({super.key});

  @override
  State<HarryPoterHousesScreen> createState() => _HarryPoterHousesScreenState();
}
final dio = Dio();
List<HarryPoterHousesModel>? listModel = [];


class _HarryPoterHousesScreenState extends State<HarryPoterHousesScreen> {
  @override
  Widget build(BuildContext context) {
    Future.sync(() async {
      final list = await getHttp();
      listModel = list;
    });
    return Scaffold(
        body: ListView.builder(itemCount: listModel!.length,itemBuilder: (context, index){
          final item = listModel![index];
          return Column(
            children: [
               HousesModels(model: item,)
            ],
          );
        }),
    );
  }

  Future<List<HarryPoterHousesModel>> getHttp() async {
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
