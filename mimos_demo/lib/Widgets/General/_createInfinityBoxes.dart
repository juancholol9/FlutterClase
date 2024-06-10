import 'package:flutter/material.dart';

class CreateInfinityBoxes extends StatelessWidget {
  final VoidCallback onPressed;
  final String texto;
  final Color colorBoton;
  final Color colorTexto;
  final String? icon; // Optional icon

  const CreateInfinityBoxes({
    super.key,
    required this.onPressed,
    required this.texto,
    required this.colorBoton,
    required this.colorTexto,
    this.icon, // Optional icon parameter
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: icon != null

      ? OutlinedButton.icon(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: colorBoton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          icon: Image(
            image: AssetImage(icon!),
            width: 20,
          ),
          label: Text(
            texto,
            style: TextStyle(
              color: colorTexto,
            ),
          ),
        )

      : ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: colorBoton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          child: Text(
            texto,
            style: TextStyle(
              color: colorTexto,
            ),
          ),
        ),
    );
  }
}
