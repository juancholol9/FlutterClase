import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimos_demo/firebase_options.dart';

import 'Screens/Main_Screens/paginaInicio.dart';
import 'Screens/Main_Screens/paginaPerfil.dart';
import 'Screens/Main_Screens/paginaOrdenar.dart';

import 'Screens/Login/welcome_screen.dart';
import 'Screens/Login/LoginScreen.dart';
import 'Screens/Login/SignupScreen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(name: 'hola', options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'Inter'
      ),

      defaultTransition: Transition.leftToRight,

      transitionDuration: const Duration(milliseconds: 500),

      initialRoute: '/',

      routes: {
        '/': (context) => const welcome_screen(),
        '/login_screen': (context) => const LoginScreen(),
        '/signup_screen': (context) => const SignupScreen(),

        // '/login': (context) => const paginaLogin(),
        '/inicio': (context) => const paginaInico(),
        '/perfil': (context) => const paginaPerfil(),
        '/ordenar': (context) => const paginaOrdenar(),
      },

    );
  }
}