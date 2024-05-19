import 'package:flutter/material.dart';

class VerOrdenes extends StatefulWidget {
  const VerOrdenes({super.key});

  @override
  State<VerOrdenes> createState() => ver_ordenes();
}

class ver_ordenes extends State<VerOrdenes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ver Ordenes Anteriores'),
      ),
      body: Text('Ver Ordenes Anteriores'),
    );
  }
}