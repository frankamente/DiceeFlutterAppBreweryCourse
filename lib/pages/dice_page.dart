import 'package:dicee/bloc/dice_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final diceBloc = BlocProvider.of<DiceBloc>(context);
    return Column(
      children: <Widget>[
        FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.blueAccent,
          onPressed: () => diceBloc.add(DiceClicked()),
          child: Text("data"),
        ),
        BlocBuilder<DiceBloc, DiceState>(
          bloc: diceBloc,
          builder: (context, state) {
            if (state is DiceInitial) {
              return Text("${state.number}");
            } else if (state is DiceUpdated) {
              return Text("${state.number}");
              //return buildColumnWithData(context, state.number);
            }
            return Text("Error");
          },
        ),
      ],
    );
  }
}
