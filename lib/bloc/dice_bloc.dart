import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dice_event.dart';
part 'dice_state.dart';

class DiceBloc extends Bloc<DiceEvent, DiceState> {
  @override
  DiceState get initialState => DiceInitial(
        leftDiceNumber: getRandomNumber(),
        rightDiceNumber: getRandomNumber(),
      );

  @override
  Stream<DiceState> mapEventToState(
    DiceEvent event,
  ) async* {
    if (event is DiceClicked) {
      yield DiceUpdated(
        leftDiceNumber: getRandomNumber(),
        rightDiceNumber: getRandomNumber(),
      );
    }
  }

  getRandomNumber() {
    return Random().nextInt(6) + 1;
  }
}
