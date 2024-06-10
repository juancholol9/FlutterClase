import 'package:flutter/material.dart';

class CreateFPMButton extends StatelessWidget {
  const CreateFPMButton({
    super.key,
    required this.TituloTexto,
    required this.SubtituloTexto,
    required this.onTap,
    required this.icono,
  });

  final String TituloTexto, SubtituloTexto;
  final IconData icono;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Row(
          children: [
            Icon(icono, size: 50),
            const SizedBox(width: 10), // Add some space between the icon and the text
            Expanded( // Use Expanded to ensure text wraps within the available space
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TituloTexto,
                    style: TextStyle(fontWeight: FontWeight.bold), // Add any style if needed
                    maxLines: 1, // Optional: Limit to 1 line and ellipsis if too long
                    overflow: TextOverflow.ellipsis, // Optional: Add ellipsis if text overflows
                  ),
                  Text(
                    SubtituloTexto,
                    style: TextStyle(color: Colors.grey), // Add any style if needed
                    maxLines: 2, // Optional: Limit to 2 lines and ellipsis if too long
                    overflow: TextOverflow.ellipsis, // Optional: Add ellipsis if text overflows
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
