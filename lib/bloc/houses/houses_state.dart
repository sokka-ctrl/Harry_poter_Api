part of 'houses_bloc.dart';

@immutable
sealed class HousesState {}

final class HousesInitial extends HousesState {}

final class HousesLoading extends HousesState {}

final class HousesSuccess extends HousesState {
  final List<HarryPoterHousesModel> listModels;

  HousesSuccess(this.listModels);
}

final class HousesError extends HousesState {
  final String message;

  HousesError(this.message);
}
