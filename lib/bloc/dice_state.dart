part of 'dice_bloc.dart';

abstract class DiceState extends Equatable {
  const DiceState();
}

class DiceInitial extends DiceState {
  final int number;

  DiceInitial({this.number});
  @override
  List<Object> get props => [number];
}

class DiceUpdated extends DiceState {
  final int number;

  DiceUpdated({this.number});
  @override
  List<Object> get props => [number];
}
