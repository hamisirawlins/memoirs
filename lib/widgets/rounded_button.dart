import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color buttonColor, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.buttonColor = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: TextButton(
          onPressed: press,
          child: Text(text, style: TextStyle(fontSize: 18, color: textColor)),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: buttonColor,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          )),
    );
  }
}
