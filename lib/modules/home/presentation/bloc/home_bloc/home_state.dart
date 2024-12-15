part of 'home_bloc.dart';

@immutable
sealed class HomeState {
  const HomeState({required this.index});
  final int index;
}

final class HomeInitial extends HomeState {
  const HomeInitial({required int index}) : super(index: index);
}
