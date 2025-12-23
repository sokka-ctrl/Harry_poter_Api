import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart'; // ✅ ТУТ
import 'package:harry_poter/data/books_repository.dart';
import 'package:harry_poter/models/books/Harry_books_model.dart';

part 'books_event.dart';
part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final BooksRepository repository;

  BooksBloc(this.repository) : super(BooksInitial()) {
    on<GetBooksEvent>(_getBooks);
  }

  Future<void> _getBooks(
      GetBooksEvent event,
      Emitter<BooksState> emit,
      ) async {
    emit(BooksLoading());
    try {
      final books = await repository.getBooks();
      emit(BooksSuccess(books));
    } catch (e) {
      emit(BooksError(e.toString()));
    }
  }
}
