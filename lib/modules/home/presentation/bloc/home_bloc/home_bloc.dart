import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial(index: 0)) {
    on<HomeEvent>((event, emit) => emit(HomeInitial(index: event.index)));
  }
}
