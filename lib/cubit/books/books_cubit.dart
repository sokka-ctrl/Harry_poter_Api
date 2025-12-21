import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter/data/books_repository.dart';
import 'package:harry_poter/data/character_repository.dart';
import 'package:harry_poter/models/books/Harry_books_model.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit() : super(BooksInitial());

  void getBooks(){
    emit(Loading(isLoading: true));
    final repository = BooksRepository();
    repository.getBooks().then((value){
      emit(BooksSuccess(value));
    }).catchError((error){
      emit(Error(error.toString()));
    });
  }
  }
