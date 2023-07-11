import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';


var startAlignement = Alignment.topLeft;
var endAlignement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {


  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.green({super.key})
      : color1 = const Color.fromARGB(255, 9, 248, 13),
        color2 = const Color.fromARGB(255, 89, 238, 75);

  final Color color1;
  final Color color2;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignement,
          end: endAlignement,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
