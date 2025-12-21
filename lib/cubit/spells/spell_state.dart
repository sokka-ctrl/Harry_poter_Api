part of 'spell_cubit.dart';

@immutable
sealed class SpellState {}

final class SpellInitial extends SpellState {}
final class SpellSuccess extends SpellState {
  final List<HarryPoterSpellsModel> listmodels;

  SpellSuccess(this.listmodels);
}
final class SpellError extends SpellState {
  final String messege;

  SpellError(this.messege);
}
final class SpellLoading extends SpellState {
  final bool isLoading;

  SpellLoading({this.isLoading = false});
}
