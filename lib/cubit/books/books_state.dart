part of 'books_cubit.dart';

@immutable
sealed class BooksState {}

final class BooksInitial extends BooksState {}

final class Loading extends BooksState {
  final bool isLoading;

  Loading({this.isLoading = false});
}

final class BooksSuccess extends BooksState {
  final List<HarryBooksModel> listmodels;

  BooksSuccess(this.listmodels);
}

final class Error extends BooksState {
  final String message;

  Error(this.message);
}
