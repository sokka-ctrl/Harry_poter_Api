part of 'spell_bloc.dart';

@immutable
sealed class SpellEvent {}

final class GetSpellsEvent extends SpellEvent {}
