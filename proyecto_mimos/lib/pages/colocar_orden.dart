import 'package:flutter/material.dart';

class ColocarOrden extends StatefulWidget {
  const ColocarOrden({super.key});

  @override
  State<ColocarOrden> createState() => colocar_orden();
}

class colocar_orden extends State<ColocarOrden> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('colocar orden'),
      ),
      body: Text('Colocar Orden'),
    );
  }
}