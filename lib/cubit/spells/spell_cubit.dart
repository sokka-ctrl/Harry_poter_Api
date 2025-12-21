import 'package:bloc/bloc.dart';
import 'package:harry_poter/data/spells_repository.dart';
import 'package:harry_poter/models/spells/Harry_poter_spells_model.dart';
import 'package:harry_poter/uimodels/Spells_model.dart';
import 'package:meta/meta.dart';

part 'spell_state.dart';

class SpellCubit extends Cubit<SpellState> {
  SpellCubit() : super(SpellInitial());

  void getSpells(){
    emit(SpellLoading(isLoading: true));
    final reppository = SpellsRepository();
    reppository.getSpells().then((value){
      emit(SpellSuccess(value));
    }).catchError((error){
      emit(SpellError(error.toString()));
    });
  }
}
