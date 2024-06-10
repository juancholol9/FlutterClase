import 'package:flutter/material.dart';
import 'package:mimos_demo/Widgets/General/_createAppBar.dart';

class paginaPerfil extends StatelessWidget {
  const paginaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          Text('Pagina de Perfil')
        ],
      ),
    );
  }
}
