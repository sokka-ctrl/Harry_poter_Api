part of 'harry_bloc.dart';

@immutable
sealed class HarryState {}

final class HarryInitial extends HarryState {}

final class HarryLoading extends HarryState {}

final class HarrySuccess extends HarryState {
  final List<HarryModel> listModels;

  HarrySuccess(this.listModels);
}

final class HarryError extends HarryState {
  final String message;

  HarryError(this.message);
}
