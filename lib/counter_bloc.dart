import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(Counterloaded(0)) {


    on<Increment>((event, emit) => _increment(event,emit));
    on<Decrement>((event, emit) => _Decrement(event,emit));

  }

  _increment(Increment event, Emitter<CounterState> emit) {

    emit(Counterloaded((state as Counterloaded).count+1));

  }

  _Decrement(Decrement event, Emitter<CounterState> emit) {

    emit(Counterloaded((state as Counterloaded).count-1));

  }
}
