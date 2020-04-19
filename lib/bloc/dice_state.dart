part of 'dice_bloc.dart';

abstract class DiceState extends Equatable {
  const DiceState();
}

class DiceInitial extends DiceState {
  final int leftDiceNumber;
  final int rightDiceNumber;

  DiceInitial({this.leftDiceNumber, this.rightDiceNumber});
  @override
  List<Object> get props => [leftDiceNumber, rightDiceNumber];
}

class DiceUpdated extends DiceState {
  final int leftDiceNumber;
  final int rightDiceNumber;

  DiceUpdated({this.leftDiceNumber, this.rightDiceNumber});
  @override
  List<Object> get props => [leftDiceNumber, rightDiceNumber];
}
