part of 'counter_bloc.dart';

class CounterEvent {}
class IncrementEvent extends CounterEvent {
  final int number;

  IncrementEvent({required this.number});
}

final class DecrementEvent extends CounterEvent{
}
