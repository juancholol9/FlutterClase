import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_mimos/pages/pagina_inicio.dart';
import 'package:proyecto_mimos/pages/colocar_orden.dart';
import 'package:proyecto_mimos/pages/cancelar_orden.dart';
import 'package:proyecto_mimos/pages/ver_ordenes.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => PaginaInicio(),
    '/colocar_orden':(context) => ColocarOrden(),
    '/cancelar_orden':(context) => CancelarOrden(),
    '/ver_ordenes':(context) => VerOrdenes()
  },
));