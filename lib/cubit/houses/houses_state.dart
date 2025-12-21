part of 'houses_cubit.dart';

@immutable
sealed class HousesState {}

final class HousesInitial extends HousesState {}

final class HousesSuccess extends HousesState {
  final List<HarryPoterHousesModel> listmodels;

  HousesSuccess(this.listmodels);
}
final class HousesLoading extends HousesState {
  final bool isLoading;

  HousesLoading({this.isLoading = false});
}
final class HousesError extends HousesState {
  final String message;

  HousesError(this.message);
}
