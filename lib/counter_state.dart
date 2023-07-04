part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {



}


class Counterloaded extends CounterState{

  int count;

  Counterloaded(this.count);


}