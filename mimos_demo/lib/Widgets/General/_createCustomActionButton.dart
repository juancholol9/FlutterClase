import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {

  final String buttonText;
  final VoidCallback onPressed;
  final Color color;
  final double height;
  final double width;
  final double elev;
  final double fontS;

  const CustomActionButton({super.key,
    required this.buttonText,
    required this.color,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.elev,
    required this.fontS,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: elev,
        shadowColor: color
      ),
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontS,
        ),
      ),
    );
  }
}
