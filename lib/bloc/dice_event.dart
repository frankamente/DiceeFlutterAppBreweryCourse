part of 'dice_bloc.dart';

abstract class DiceEvent extends Equatable {
  const DiceEvent();
}

class DiceClicked extends DiceEvent {
  @override
  List<Object> get props => props;
}
