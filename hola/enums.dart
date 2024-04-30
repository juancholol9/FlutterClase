enum Fruta {manzana, banana}

void main () {
  var a = Fruta.banana;

  switch (a) {
    case Fruta.banana:
      print('es una banana');
      break;
    case Fruta.manzana:
      print("es una manzana");
      break;
    default:
  }
}