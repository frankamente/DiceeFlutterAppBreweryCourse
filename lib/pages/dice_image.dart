import 'package:dicee/bloc/dice_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiceImage extends StatelessWidget {
  final int number;
  final String imageContainerDirectory = "images/";
  final String imageFileName = "dice";
  final String imageExtension = ".png";

  DiceImage({this.number});

  @override
  Widget build(BuildContext context) {
    final diceBloc = BlocProvider.of<DiceBloc>(context);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => diceBloc.add(DiceClicked()),
          child: Container(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.redAccent, BlendMode.color),
              child: Image(
                image: AssetImage(
                  '$imageContainerDirectory$imageFileName$number$imageExtension',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
