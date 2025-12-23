
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter/bloc/books/books_bloc.dart';
import 'package:harry_poter/data/books_repository.dart';
import 'package:harry_poter/uimodels/Books_models.dart';


class HarryPoterBooksScreen extends StatelessWidget {
  const HarryPoterBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
      BooksBloc(BooksRepository())..add(GetBooksEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Harry Potter Books'),
          backgroundColor: Colors.green,
        ),
        body: BlocBuilder<BooksBloc, BooksState>(
          builder: (context, state) {
            if (state is BooksLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is BooksSuccess) {
              return ListView.builder(
                itemCount: state.listModels.length,
                itemBuilder: (context, index) {
                  return BooksModel(
                    model: state.listModels[index],
                  );
                },
              );
            }

            if (state is BooksError) {
              return Center(
                child: Text(state.message),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
