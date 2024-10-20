part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class ChangeScreen extends HomeState {
  final int index;
  ChangeScreen(this.index);
}
