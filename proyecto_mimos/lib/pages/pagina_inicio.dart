import 'package:flutter/material.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({super.key});

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(

      appBar: AppBar(
        title: Text(
          "Aguas Mimos",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            SizedBox(
              width: 300,
              height: 150,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/colocar_orden');
                },
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.grey[800],
                  color: Colors.blue[800],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Colocar una orden",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                    ),
                ),
              ),
            ),

            SizedBox(
              width: 300,
              height: 150,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/cancelar_orden');
                },
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.grey[800],
                  color: Colors.red[800],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Cancelar una orden",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                    ),
                ),
              ),
            ),

            SizedBox(
              width: 300,
              height: 150,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/ver_ordenes');
                },
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.grey[800],
                  color: Colors.grey[800],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ver Ordenes Anteriores",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                    ),
                ),
              ),
            ),

          ]

        ),
      )

    );
  }
}