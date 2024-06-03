import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/widgets/todo_item.dart';
import '../model/todo.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue,

      appBar: _buildAppbar(),

      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [

                searchBox(),

                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 50,
                          bottom: 20
                        ),
                        child: Text(
                          'Todas las tareas',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),

                      for(ToDo todoo in todoList)
                        ToDoItem(todo: todoo,),


                    ],
                  ),
                )

              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                      left: 20
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0,
                      ),],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Add a new todo item",
                        border: InputBorder.none
                      ),
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20
                  ),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('+', style: TextStyle(fontSize: 40),),
                  ),
                )
              ],
            ),
          )
        ],
      ),

    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      title: Row(
        children: [
          Icon(Icons.menu, size: 30,),
        ],
      ),
      backgroundColor: Colors.blue,
      centerTitle: true,
    );
  }
}

class searchBox extends StatelessWidget {
  const searchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 20,
                    minWidth: 25
                  ),
                  border: InputBorder.none,
                  hintText: 'search',
                  hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            );
  }
}