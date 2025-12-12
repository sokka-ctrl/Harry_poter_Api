import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harry_poter/models/character/Harry_model.dart';
import 'package:harry_poter/uimodels/Persona_models.dart';

class HarryPoterScreen extends StatefulWidget {
  const HarryPoterScreen({super.key});

  @override
  State<HarryPoterScreen> createState() => _HarryPoterScreenState();
}

final dio = Dio();
List<HarryModel>? listModel = [];

class _HarryPoterScreenState extends State<HarryPoterScreen> {
  @override
  Widget build(BuildContext context) {
    Future.sync(() async {
      final list = await getHttp();
      listModel = list;
    });
    return Scaffold(
      body: Center(
        child: ListView.builder(itemCount: listModel!.length,itemBuilder: (context, index){
          final item = listModel![index];
            return Column(
              children: [
                PersonaModels(model: item)
              ],
            );
        })
      ),
    );
  }

  Future<List<HarryModel>> getHttp() async {
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
