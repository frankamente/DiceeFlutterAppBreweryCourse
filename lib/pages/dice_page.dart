import 'package:dicee/pages/dice_image.dart';
import 'package:flutter/material.dart';
import 'package:dicee/bloc/dice_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final diceBloc = BlocProvider.of<DiceBloc>(context);
    return Container(
      child: Center(
        child: BlocBuilder<DiceBloc, DiceState>(
          bloc: diceBloc,
          builder: (context, state) {
            if (state is DiceInitial) {
              return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DiceImage(
                      number: state.leftDiceNumber,
                    ),
                    DiceImage(
                      number: state.rightDiceNumber,
                    ),
                  ]);
            } else if (state is DiceUpdated) {
              return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DiceImage(
                      number: state.leftDiceNumber,
                    ),
                    DiceImage(
                      number: state.rightDiceNumber,
                    ),
                  ]);
              //return buildColumnWithData(context, state.number);
            }
            return Text("Error");
          },
        ),
      ),
    );
  }
}
