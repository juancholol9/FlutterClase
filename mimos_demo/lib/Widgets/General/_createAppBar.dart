// my_app_bar.dart
import 'package:flutter/material.dart';
import 'package:mimos_demo/Screens/Main_Screens/paginaPerfil.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Set your desired height

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Aguas Mimos",
        style: TextStyle(
          color: Colors.white,
        ),

      ),
      backgroundColor: Colors.blue,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const paginaPerfil()),
            );
          },
          icon: const Icon(
            Icons.account_circle_rounded,
            size: 40,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}


