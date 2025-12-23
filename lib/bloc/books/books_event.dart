part of 'books_bloc.dart';

@immutable
sealed class BooksEvent {}

final class GetBooksEvent extends BooksEvent {}
