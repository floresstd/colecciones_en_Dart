void main(){
 print("Jesús Daniel Flores Rodríguez 22308051281186 grupo 6°J");
 Map<int, String> alumnos = {
    1: "Juan",
    2: "Pedro",
    3: "Luis"
 };
 print("Mapa de alumnos:" );
 print(alumnos);

 print("Iterar el map con forEach:");
  alumnos.forEach((key, value) {
    print("$key, Valor: $value");
  });

  print("Iterar un mapa con forIn:");
  for (var key in alumnos.keys) {
    print("${alumnos[key]}");
  }
}