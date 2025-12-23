import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:harry_poter/data/houses_repository.dart';
import 'package:harry_poter/models/houses/Harry_poter_houses_model.dart';

part 'houses_event.dart';
part 'houses_state.dart';

class HousesBloc extends Bloc<HousesEvent, HousesState> {
  final HousesRepository repository;

  HousesBloc(this.repository) : super(HousesInitial()) {
    on<GetHousesEvent>(_getHouses);
  }

  Future<void> _getHouses(
      GetHousesEvent event,
      Emitter<HousesState> emit,
      ) async {
    emit(HousesLoading());
    try {
      final houses = await repository.getHouses();
      emit(HousesSuccess(houses));
    } catch (e) {
      emit(HousesError(e.toString()));
    }
  }
}
