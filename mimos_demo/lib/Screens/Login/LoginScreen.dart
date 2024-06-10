import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mimos_demo/Constants/images.dart';
import 'package:mimos_demo/Widgets/General/_createCustomActionButton.dart';
import 'package:mimos_demo/Widgets/ForgetPassword/_createForgotPasswordModal.dart';
import 'package:mimos_demo/Widgets/General/_createInfinityBoxes.dart';
import 'package:mimos_demo/Widgets/General/_createTextFormField.dart'; // Update this import

class LoginScreen extends StatelessWidget { // Renamed to LoginScreen to follow Dart naming conventions
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(mimos_logo),
                const SizedBox(height: 20,),
                Form(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const CreateTextFormField(
                          cont: null,
                          icono: Icons.email,
                          lTexto: 'Correo Electronico',
                          hTexto: 'Correo Electronico',
                          sIcono: null,
                        ),

                        const SizedBox(height: 15,),

                        const CreateTextFormField(
                          cont: null,
                          icono: Icons.fingerprint,
                          lTexto: 'Contrasena',
                          hTexto: 'Contrasena',
                          sIcono: Icons.remove_red_eye_sharp,
                        ),

                        const SizedBox(height: 15,),

                        Align(
                          alignment: Alignment.centerRight,

                          child: CreateForgotPasswordModal(),

                        ),

                        CreateInfinityBoxes(
                          texto: "Login",
                          colorBoton: Colors.black,
                          colorTexto: Colors.white,
                          icon: null,
                          onPressed: () {},
                        ),

                        Column(
                          children: [

                            Text("OR"),

                            CreateInfinityBoxes(
                              texto: "Sign in with Google",
                              colorBoton: Colors.white,
                              colorTexto: Colors.black,
                              icon: google_logo,
                              onPressed: () {},
                            ),

                            TextButton(
                              onPressed: () {},
                              child: Text.rich(
                                TextSpan(
                                  text: "Don't have an account?  ",
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: "Sign up",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        CustomActionButton(
                          buttonText: "Go Back",
                          color: Colors.green,
                          onPressed: () { Get.back(); },
                          height: 20,
                          width: 50,
                          elev: 0,
                          fontS: 18,
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




