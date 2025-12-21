import 'package:bloc/bloc.dart';
import 'package:harry_poter/data/character_repository.dart';
import 'package:harry_poter/models/character/Harry_model.dart';
import 'package:meta/meta.dart';

part 'harry_state.dart';

class HarryCubit extends Cubit<HarryState> {
  HarryCubit() : super(HarryInitial());

  void getCharacters(){
    emit(Loading(isLoading: true));
    final repository = Repository();
    repository.getHttp().then((value){
      emit(Success(value));
    }).catchError((error){
      emit(Error(error.toString()));
    });
  }

}
