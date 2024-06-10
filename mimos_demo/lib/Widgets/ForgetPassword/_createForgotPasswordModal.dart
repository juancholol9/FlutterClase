import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mimos_demo/Widgets/ForgetPassword/CreateFPMButton.dart';
import 'package:mimos_demo/Screens/ForgetPassword/ForgetPasswordEmailScreen.dart';

class CreateForgotPasswordModal extends StatelessWidget {
  const CreateForgotPasswordModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Olvido su contrasena?"),
                const Text("Use las siguientes opciones para poder restablecerlas:"),
                const SizedBox(height: 20,),

                CreateFPMButton(
                  icono: Icons.email,
                  TituloTexto: "Correo Electronico",
                  SubtituloTexto: "Restablecer contrasena mediante correo electronico",
                  onTap: () => Get.to(() => const ForgetPasswordMailScreen()),
                ),

                CreateFPMButton(
                  icono: Icons.phone,
                  TituloTexto: "Telefono",
                  SubtituloTexto: "Restablecer contrasena mediante un codigo",
                  onTap: (){},
                ),

              ],
            ),
          ),
        );
      },
      child: const Text(
        "Olvido su contrasena?",
        style: TextStyle(
          color: Colors.black
        ),
      ),
    );
  }
}

