import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({this.buttonText, this.iconImagePath, super.key});
  final String? iconImagePath;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Container(
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  spreadRadius: 10,
                  color: Colors.grey.shade400,
                )
              ]),
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Image.asset(
              iconImagePath ?? 'assets/icons/share (1).png',
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          buttonText ?? "Send",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.blueAccent.shade400),
        ),
      ],
    );
  }
}
