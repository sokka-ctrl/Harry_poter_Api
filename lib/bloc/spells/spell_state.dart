part of 'spell_bloc.dart';

@immutable
sealed class SpellState {}

final class SpellInitial extends SpellState {}

final class SpellLoading extends SpellState {}

final class SpellSuccess extends SpellState {
  final List<HarryPoterSpellsModel> listModels;

  SpellSuccess(this.listModels);
}

final class SpellError extends SpellState {
  final String message;

  SpellError(this.message);
}
