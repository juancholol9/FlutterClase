import 'package:flutter/material.dart';

class CancelarOrden extends StatefulWidget {
  const CancelarOrden({super.key});

  @override
  State<CancelarOrden> createState() => cancelar_orden();
}

class cancelar_orden extends State<CancelarOrden> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cancelar Orden'),
      ),
      body: Text('Cancelar Orden'),
    );
  }
}