import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Color bgColor;
  final bool big;
  final String text;

  final Function onPressed;

  CalculatorButton({
    Key? key,
    bgColor,
    this.big = false,
    required this.text,
    required this.onPressed,
  })   : this.bgColor = bgColor ?? Color(0xff333333),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    print(width);

    // Button
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: this.bgColor,
      primary: Colors.white,
      shape: StadiumBorder(),
    );

    return Container(
      margin: EdgeInsets.only(bottom: 8, right: 4, left: 4),
      child: TextButton(
        style: buttonStyle,
        child: Container(
          width: this.big ? width / 2.5 : width / 6,
          height: 60,
          child: Center(
              child: Text(
            this.text,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          )),
        ),
        onPressed: () => this.onPressed(),
      ),
    );
  }
}
