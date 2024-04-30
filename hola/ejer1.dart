void main(){
  var lista = [4, 8, 15, 16, 23, 42, 8, 12, 3, 19, 27, 16, 38, 9, 11, 23, 30, 45, 4, 7];
  Set seto = {};
  print('lista no ordenada $lista');
  int n = lista.length;
  for (int i = 1; i < n; ++i) {
    int key = lista[i];
    int j = i - 1;
    while (j >= 0 && lista[j] > key) {
      lista[j + 1] = lista[j];
      j = j - 1;
    }
    lista[j + 1] = key;
  }
  print('lista ordenada $lista');

  for(int i = 0; i < lista.length; i++){
    seto.add(lista[i]);
  }
  print('Sets si ningun numero repetido $seto');
}