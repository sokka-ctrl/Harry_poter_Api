
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter/cubit/books/books_cubit.dart';
import 'package:harry_poter/uimodels/Books_models.dart';

class HarryPoterBooksScreen extends StatefulWidget {

  const HarryPoterBooksScreen({super.key});

  @override
  State<HarryPoterBooksScreen> createState() => _HarryPoterBooksScreenState();
}

final cubit = BooksCubit()..getBooks();

class _HarryPoterBooksScreenState extends State<HarryPoterBooksScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harry Poter Books'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: BlocBuilder<BooksCubit, BooksState>(
          bloc: cubit,
          builder: (context, state){
            if (state is BooksSuccess){
              final list = state.listmodels;
              return Center(
                  child: ListView.builder(
                      itemCount: list.length, itemBuilder: (context, index) {
                    final item = list[index];
                    return Column(
                      children: [
                        BooksModel(model: item)
                      ],
                    );
                  })
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

}
