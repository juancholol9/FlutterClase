class ToDo{

  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return[
      ToDo(id: '1', todoText: 'hola como estas', isDone: true),
      ToDo(id: '2', todoText: 'hola como ', isDone: true),
      ToDo(id: '3', todoText: 'hola ', ),
      ToDo(id: '4', todoText: 'hola ', ),
      ToDo(id: '5', todoText: 'hola ', ),
    ];
  }
}