
import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc() : super(CounterStateInitial()){
    on<CounterIncrementEvent>(_increment);
    on<CounterDecrementEvent>(_decrement);
  }
  

  void _increment(CounterIncrementEvent event, Emitter<CounterState> emit) {
    emit(CounterStateData(state.counter + 1));
  }
  void _decrement(CounterDecrementEvent event, Emitter<CounterState> emit) {
    emit(CounterStateData(state.counter - 1));
  }
}

