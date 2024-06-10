import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mimos_demo/Widgets/General/_createCustomActionButton.dart';
import 'package:mimos_demo/Constants/images.dart';

import 'package:mimos_demo/Screens/Login/LoginScreen.dart';
import 'package:mimos_demo/Screens/Login/SignupScreen.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({super.key});

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Container(

          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Color.fromARGB(255, 6, 62, 108)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              const Image(
                image: AssetImage(
                  mimos_logo,
                ),
                height: 100,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  CustomActionButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    color: Colors.blue,
                    buttonText: "Iniciar Sesion",
                    width: 180,
                    height: 100,
                    elev: 0,
                    fontS: 18,
                  ),
                  CustomActionButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    color: Colors.blue,
                    buttonText: "Registrarse",
                    width: 180,
                    height: 100,
                    elev: 0,
                    fontS: 18,
                  ),
                ],

              )
            ],
          ),

        )
      )

    );
  }
}

