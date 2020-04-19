import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dice_event.dart';
part 'dice_state.dart';

class DiceBloc extends Bloc<DiceEvent, DiceState> {
  @override
  DiceState get initialState => DiceInitial(number: getRandomNumber());

  @override
  Stream<DiceState> mapEventToState(
    DiceEvent event,
  ) async* {
    if (event is DiceClicked) {
      yield DiceUpdated(number: getRandomNumber());
    }
  }

  getRandomNumber() {
    return Random().nextInt(6) + 1;
  }
}
