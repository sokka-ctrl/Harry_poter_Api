import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:harry_poter/data/spells_repository.dart';
import 'package:harry_poter/models/spells/Harry_poter_spells_model.dart';

part 'spell_event.dart';
part 'spell_state.dart';

class SpellBloc extends Bloc<SpellEvent, SpellState> {
  final SpellsRepository repository;

  SpellBloc(this.repository) : super(SpellInitial()) {
    on<GetSpellsEvent>(_getSpells);
  }

  Future<void> _getSpells(
      GetSpellsEvent event,
      Emitter<SpellState> emit,
      ) async {
    emit(SpellLoading());
    try {
      final spells = await repository.getSpells();
      emit(SpellSuccess(spells));
    } catch (e) {
      emit(SpellError(e.toString()));
    }
  }
}
