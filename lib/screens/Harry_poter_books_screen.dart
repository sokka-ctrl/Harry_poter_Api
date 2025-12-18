import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harry_poter/models/books/Harry_books_model.dart';
import 'package:harry_poter/uimodels/Books_models.dart';

class HarryPoterBooksScreen extends StatefulWidget {
  const HarryPoterBooksScreen({super.key});

  @override
  State<HarryPoterBooksScreen> createState() => _HarryPoterBooksScreenState();
}

final dio = Dio();
List<HarryBooksModel>? listModel = [];

class _HarryPoterBooksScreenState extends State<HarryPoterBooksScreen> {

  @override
  void initState() {
    super.initState();
    Future.sync(() async {
      final list = await getHttp();
      setState(() {
        listModel = list;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harry Poter Books'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: ListView.builder(itemCount: listModel!.length,itemBuilder: (context, index){
            final item = listModel![index];
            return Column(
              children: [
                BooksModel(model: item)
              ],
            );
          })
      ),
    );
  }


  Future<List<HarryBooksModel>> getHttp() async {
    final response = await dio.get(
      'https://potterapi-fedeperin.vercel.app/en/books',
    );
    final data = response.data;
    final List<HarryBooksModel> list = (data as List)
        .map((item) => HarryBooksModel.fromJson(item as Map<String, dynamic>))
        .toList();
    return list;
  }
}
