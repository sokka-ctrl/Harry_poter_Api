import 'package:bloc/bloc.dart';
import 'package:harry_poter/data/houses_repository.dart';
import 'package:harry_poter/models/houses/Harry_poter_houses_model.dart';
import 'package:meta/meta.dart';

part 'houses_state.dart';

class HousesCubit extends Cubit<HousesState> {
  HousesCubit() : super(HousesInitial());


  void getHouses(){
    emit(HousesLoading(isLoading: true));
    final repository = HousesRepository();
    repository.getHouses().then((value){
      emit(HousesSuccess(value));
    }).catchError((error){
      emit(HousesError(error.toString()));
    });
  }
}
