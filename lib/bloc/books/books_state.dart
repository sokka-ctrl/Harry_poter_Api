part of 'books_bloc.dart';

@immutable
sealed class BooksState {}

final class BooksInitial extends BooksState {}

final class BooksLoading extends BooksState {}

final class BooksSuccess extends BooksState {
  final List<HarryBooksModel> listModels;

  BooksSuccess(this.listModels);
}

final class BooksError extends BooksState {
  final String message;

  BooksError(this.message);
}
