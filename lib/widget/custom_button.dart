import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Color buttonColor;
  Color textColor;
  final String buttonText;
  final buttonTabbed;
  CustomButton(
      {required this.buttonColor,
      required this.textColor,
      required this.buttonText,
      required this.buttonTabbed,
      });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: buttonTabbed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 5),
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Container(
            height: 62,
            width: 62,

            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                    color: textColor, fontWeight: FontWeight.w500, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(15)
            ),
          ),

        ),
      ),
    );
  }
}