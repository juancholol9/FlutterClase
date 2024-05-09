import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _mensaje(String message){
    final SnackBar = SnackBar(
      content: const Text("Hola soy un snackbar"),
      action: SnackBarAction(
        label: "undo",
        onPressed: (){
          //some code
        }
      )
    )
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Menus Principal")
              ),
              ListTile(
                title: const Text("Item 1"),
                onTap: () => null,
              ),
              const ListTile(title: Text("Menu 2"),onTap: null,)
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("menu drawer"),
          bottom: const TabBar(tabs: [

          ])
          ),
      )
    );
  }
}