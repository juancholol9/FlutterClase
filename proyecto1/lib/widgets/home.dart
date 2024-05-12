// import 'package:flutter/material.dart';
// import 'package:proyecto1/widgets/detallespage.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final List<Map<String, dynamic>> _allUsers = [
//     {"id":1, "name": "andy", "age":39},
//     {"id":2, "name": "jose", "age":69},
//     {"id":3, "name": "carlos", "age":13},
//     {"id":4, "name": "mario", "age":68},
//     {"id":5, "name": "perez", "age":64},
//     {"id":6, "name": "pedro", "age":23},
//     {"id":7, "name": "marcos", "age":12},
//     {"id":8, "name": "tulio", "age":10},
//   ];
//   List<Map<String, dynamic>> _foundUsers = [];

//   @override
//   void initState() {
//     // TODO: implement initState
//     _foundUsers = _allUsers;
//     super.initState();
//   }

//   void _runFilter(String enteredKeyword){
//     List<Map<String, dynamic>> results = [];

//     if (enteredKeyword.isEmpty){
//       results = _allUsers;
//     }else{
//       results = _allUsers
//       .where((user) =>
//         user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
//       .toList();
//     }

//     setState((){
//       _foundUsers = results;
//     });

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       appBar: AppBar(
//         title: const Text("Filtros"),
//       ),

//       body: Padding(

//         padding: const EdgeInsets.all(10),

//         child: Column(
//           children: [

//             const SizedBox(
//               height: 20,
//             ),

//             TextField(
//               onChanged: (value) => _runFilter(value),
//               decoration: const InputDecoration(
//                 labelText: 'Buscar', suffixIcon: Icon(Icons.search)
//                 )
//             ),

//             Expanded(

//               child: _foundUsers.isNotEmpty
//               ? ListView.builder(

//                   itemCount: _foundUsers.length,

//                   itemBuilder: (context, index) =>

//                   Card(
//                     key: ValueKey(_foundUsers[index]["id"]),
//                     color: Colors.amber,
//                     elevation: 4,
//                     margin: const EdgeInsets.symmetric(vertical: 10),

//                     child: ListTile(
//                       leading: Text(_foundUsers[index]['id'].toString()),
//                       title: Text(_foundUsers[index]["name"]),
//                       subtitle: Text("${_foundUsers[index]["age"].toString()} anos"),
//                       onTap:() => {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => detallespage(
//                               _foundUsers[index]['name'].toString()
//                             ),
//                           )
//                         )
//                       },
//                     ),

//                   ),

//                 ),

//             ),

//           ],
//         ),

//       ),

//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:proyecto1/widgets/detallespage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "andy", "age": 39},
    {"id": 2, "name": "jose", "age": 69},
    {"id": 3, "name": "carlos", "age": 13},
    {"id": 4, "name": "mario", "age": 68},
    {"id": 5, "name": "perez", "age": 64},
    {"id": 6, "name": "pedro", "age": 23},
    {"id": 7, "name": "marcos", "age": 12},
    {"id": 8, "name": "tulio", "age": 10},
  ];
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];

    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filtros"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Buscar', suffixIcon: Icon(Icons.search)),
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: Colors.amber,
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: Text(_foundUsers[index]['id'].toString()),
                          title: Text(_foundUsers[index]["name"]),
                          subtitle:
                              Text("${_foundUsers[index]["age"].toString()} años"),
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetallesPage(
                                  _foundUsers[index]['name'].toString(),
                                ),
                              ),
                            )
                          },
                        ),
                      ),
                    )
                  : const Center(
                      child: Text("No se encontraron usuarios"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
