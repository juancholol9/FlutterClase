import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:get/get.dart';
import 'package:mimos_demo/Widgets/General/_createInfinityBoxes.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("CODE"),
              Text("Verification"),
              Text('Ingrese el codigo que se envio al correo ',
              textAlign: TextAlign.center,),

              SizedBox(height: 20,),

              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(1),
                filled: true,
                onSubmit: (code){},
              ),

              SizedBox(height: 20,),

              CreateInfinityBoxes(
                onPressed: () {},
                texto: 'Siguiente',
                colorBoton: Colors.black,
                colorTexto: Colors.white
              ),

            ],
          ),
        ),
      ),
    );
  }
}