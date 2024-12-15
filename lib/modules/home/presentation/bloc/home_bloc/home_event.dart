part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {
  const HomeEvent({required this.index});
  final int index;
}

class SetPageEvent extends HomeEvent {
  const SetPageEvent({required super.index});
}
