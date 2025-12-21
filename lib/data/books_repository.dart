import 'package:dio/dio.dart';
import 'package:harry_poter/models/books/Harry_books_model.dart';

class BooksRepository {

  Future<List<HarryBooksModel>> getBooks() async{
    final dio = Dio();
    final response = await dio.get(
        'https://potterapi-fedeperin.vercel.app/en/books',
    );
    final data = response.data;
    final List<HarryBooksModel> list = (data as List).map((item) => HarryBooksModel.fromJson(item as Map<String, dynamic>)).toList();
    return list;
  }


}