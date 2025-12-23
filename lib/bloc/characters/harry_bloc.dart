import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:harry_poter/data/character_repository.dart';
import 'package:harry_poter/models/character/Harry_model.dart';

part 'harry_event.dart';
part 'harry_state.dart';

class HarryBloc extends Bloc<HarryEvent, HarryState> {
  final Repository repository;

  HarryBloc(this.repository) : super(HarryInitial()) {
    on<GetCharactersEvent>(_getCharacters);
  }

  Future<void> _getCharacters(
      GetCharactersEvent event,
      Emitter<HarryState> emit,
      ) async {
    emit(HarryLoading());
    try {
      final characters = await repository.getHttp();
      emit(HarrySuccess(characters));
    } catch (e) {
      emit(HarryError(e.toString()));
    }
  }
}
