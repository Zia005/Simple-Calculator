import 'package:flutter/material.dart';
import 'calculator-button.dart';

class CalculatorRow extends StatelessWidget {
  CalculatorRow({@required this.buttons, @required this.onTap });

  final List<String> buttons;
  final CalculatorButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: rowButtons(),
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }

  List<Widget> rowButtons() {
    List<Widget> allButtons = [];

    buttons.forEach((String buttonText) {
      allButtons.add(
        CalculatorButton(
          text: buttonText,
          onTap: onTap,
        ),
      );
    });

    return allButtons;
  }


}
