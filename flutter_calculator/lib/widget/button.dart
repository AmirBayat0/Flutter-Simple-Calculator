import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final VoidCallback buttonTapped;

   const CustomButton({Key? key, 
    required this.color,
    required this.textColor,
    required this.text,
    required this.buttonTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 19),
          ),
        ),
      ),
    );
  }
}
