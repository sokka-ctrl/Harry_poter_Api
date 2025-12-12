import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harry_poter/models/spells/Harry_poter_spells_model.dart';
import 'package:harry_poter/uimodels/Spells_model.dart';

class HarryPoterSpellsScreen extends StatefulWidget {
  const HarryPoterSpellsScreen({super.key});

  @override
  State<HarryPoterSpellsScreen> createState() => _HarryPoterSpellsScreenState();
}
final dio = Dio();
List<HarryPoterSpellsModel>? listModel = [];

class _HarryPoterSpellsScreenState extends State<HarryPoterSpellsScreen> {
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
                SpellsModel(model: item)
            ],
          );
        },),
      ),
    );
  }
  Future<List<HarryPoterSpellsModel>> getHttp() async {
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
