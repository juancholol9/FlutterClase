import 'package:flutter/material.dart';

class CreateTextFormField extends StatelessWidget {
  const CreateTextFormField({
    super.key,
    required this.icono,
    required this.sIcono,
    required this.lTexto,
    required this.hTexto,
    required this.cont,
  });

  final IconData icono;
  final IconData? sIcono;
  final String lTexto, hTexto;
  final TextEditingController? cont;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: cont != null ? cont : null,
      decoration: InputDecoration(
        prefixIcon: Icon(icono),
        labelText: lTexto,
        hintText: hTexto,
        border: const OutlineInputBorder(),
        suffixIcon: sIcono != null ? Icon(sIcono) : null, // Conditional suffix icon
      ),
    );
  }
}
