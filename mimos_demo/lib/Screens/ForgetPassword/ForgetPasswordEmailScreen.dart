import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimos_demo/Screens/ForgetPassword/OTPScreen.dart';
import 'package:mimos_demo/Widgets/General/_createCustomActionButton.dart';
import 'package:mimos_demo/Widgets/General/_createInfinityBoxes.dart';
import 'package:mimos_demo/Widgets/General/_createTextFormField.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              const Text("Olvido su contrasena?"),

              const SizedBox(height: 20,),

              const Text("Ingrese su correo electronico para que pueda recibir un enlance el cual le ayudara a restablecer su contrasena"),

              const SizedBox(height: 20,),

              const CreateTextFormField(
                cont: null,
                icono: Icons.mail,
                lTexto: 'Correo Electronico',
                hTexto: 'Correo Electronico',
                sIcono: null,
              ),

              const SizedBox(height: 20,),

              CreateInfinityBoxes(
                onPressed: () => Get.to(() => const OTPScreen()),
                texto: 'Siguiente',
                colorBoton: Colors.black,
                colorTexto: Colors.white
              ),

              CustomActionButton(buttonText: "go back", color: Colors.green, onPressed: () {Get.back();}, height: 20, width: 50, elev: 0, fontS: 18)

            ],
          ),
        ),
      ),
    );
  }
}