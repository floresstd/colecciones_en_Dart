void main() {
  //lista tipo entero con 3 elementos
  print("Jesús Daniel Flores Rodríguez 22308051281186 grupo 6°J");
  List<int> numeros = [10, 20, 30];
  print("Lista de numeros enteros: ");
  print(numeros);
  print("Primer elemento: ${numeros[0]}");
  print("Segundo elemento: ${numeros[1]}");
  print("Tercer elemento: ${numeros[2]}");
  
  
  print("Elementos de la lista usando for:");
  for (int i = 0; i < numeros.length; i++) {
    print("Elemento $i: ${numeros[i]}");
  }

  

}