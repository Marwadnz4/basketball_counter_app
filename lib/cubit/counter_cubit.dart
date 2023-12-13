import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitState());
  int teamAPoints = 0;

  int teamBPoints = 0;
  void teamPointsIncrement({
    required String team,
    required int btnNum,
  }) {
    if (team == 'A') {
      teamAPoints += btnNum;
      emit(CounterAIncrementState());
    } else if (team == 'B') {
      teamBPoints += btnNum;
      emit(CounterBIncrementState());
    } else {
      print('The team is invalid');
    }
  }

  void reset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterRestState());
  }
}
