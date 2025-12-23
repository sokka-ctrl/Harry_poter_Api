part of 'houses_bloc.dart';

@immutable
sealed class HousesEvent {}

final class GetHousesEvent extends HousesEvent {}
