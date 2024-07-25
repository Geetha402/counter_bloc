import 'package:bloc/bloc.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      final currVal = state;
      final toAdd = event.number;
      emit(currVal + toAdd);
    });
    on<DecrementEvent>((event, emit) {
      emit(state - 1);
    });
  }
}
