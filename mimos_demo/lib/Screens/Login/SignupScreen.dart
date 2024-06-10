import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimos_demo/Constants/images.dart';
import 'package:mimos_demo/Services/Firebase/FirebaseAuthServices.dart';
import 'package:mimos_demo/Widgets/General/_createCustomActionButton.dart';
import 'package:mimos_demo/Widgets/General/_createInfinityBoxes.dart';
import 'package:mimos_demo/Widgets/General/_createTextFormField.dart';
import 'package:mimos_demo/Screens/Main_Screens/paginaInicio.dart';


// ignore: camel_case_types
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _nombre = TextEditingController();
  TextEditingController _correo = TextEditingController();
  TextEditingController _contrasena = TextEditingController();
  TextEditingController _telefono = TextEditingController();

  @override
  void dispose() {
    _nombre.dispose();
    _correo.dispose();
    _contrasena.dispose();
    _telefono.dispose();
    super.dispose();
  }

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
                SizedBox(height: 15,),
                const Text('Sig Up Page'),

                Form(

                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        CreateTextFormField(
                          cont: null,
                          icono: Icons.person,
                          lTexto: 'Nombre',
                          hTexto: 'Nombre',
                          sIcono: null,
                        ),

                        const SizedBox(height: 15,),

                        CreateTextFormField(
                          cont: _correo,
                          icono: Icons.mail,
                          lTexto: 'Correo Electronico',
                          hTexto: 'Correo Electronico',
                          sIcono: null,
                        ),

                        const SizedBox(height: 15,),

                        CreateTextFormField(
                          cont: null,
                          icono: Icons.phone,
                          lTexto: 'Phone #',
                          hTexto: 'Phone #',
                          sIcono: null,
                        ),

                        const SizedBox(height: 15,),

                        CreateTextFormField(
                          cont: _contrasena,
                          icono: Icons.fingerprint,
                          lTexto: 'Contrasena',
                          hTexto: 'Contrasena',
                          sIcono: Icons.remove_red_eye_sharp,
                        ),

                        const SizedBox(height: 15,),

                        CreateInfinityBoxes(
                          texto: "Sign Up",
                          colorBoton: Colors.black,
                          colorTexto: Colors.white,
                          icon: null,
                          onPressed: () {
                            _signup();
                          },
                        ),

                        Column(
                          children: [

                            const Text("OR"),

                            CreateInfinityBoxes(
                              texto: "Sign Up with Google",
                              colorBoton: Colors.white,
                              colorTexto: Colors.black,
                              icon: google_logo,
                              onPressed: () {},
                            ),

                            TextButton(
                              onPressed: () {},
                              child: const Text.rich(
                                TextSpan(
                                  text: "Already have an account?  ",
                                  children: [
                                    TextSpan(
                                      text: "Sign up",
                                      style: TextStyle(color: Colors.blue)
                                    )
                                  ]
                                )
                              )
                            )

                          ],
                        ),

                        CustomActionButton(buttonText: "go back", color: Colors.green, onPressed: () {Get.back();}, height: 20, width: 50, elev: 0, fontS: 18)

                      ],
                    ),
                  )
                )

              ],
            ),
          ),
        ),
      ),

    );
  }

  void _signup() async{
    // String nombre = _nombreController.text;
    String correo = _correo.text;
    String contrasena = _contrasena.text;

    User? user = await _auth.signUpWithEmailAndPassword(correo, contrasena);

    if(user != null){
      print("Usuario creado");
      Get.to(() => const paginaInico());
    }else{
      print("Hubo un error");
    }

  }


}

