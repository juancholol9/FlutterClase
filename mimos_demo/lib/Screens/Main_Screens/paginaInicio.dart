// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mimos_demo/Screens/Main_Screens/paginaOrdenar.dart';
// import 'package:mimos_demo/Screens/paginaPerfil.dart';
import '../../Widgets/General/_createAppBar.dart';
import '../../Widgets/General/_createCustomActionButton.dart';

class paginaInico extends StatelessWidget {
  const paginaInico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const MyAppBar(),

      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              CustomActionButton(
                buttonText: 'Ordenar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const paginaOrdenar()),
                  );
                },
                color: Colors.blue,
                width: 20,
                height: 20,
                elev: 0,
                fontS: 18,
              ),

              // CustomActionButton(
              //   buttonText: 'Cancelar',
              //   onPressed: () {},
              //   color: Colors.red,
              //   width: 20,
              //   height: 20,
              //   elev: 0,
              // ),

              // CustomActionButton(
              //   buttonText: 'Historial',
              //   onPressed: () {},
              //   color: Colors.grey,
              //   width: 20,
              //   height: 20,
              //   elev: 0,
              // ),

            ],
          ),
        ),
    );
  }
}
