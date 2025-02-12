void main() {
  print("Jesús Daniel Flores Rodríguez 22308051281186 grupo 6°J");
  print("Mapa Clientes");

  Map<String, dynamic> Clientes = {
    'ID_Cliente': 1,
    'Nombre': 'Jesús',
    'Apellido': 'Flores',
    'Email': 'hp54@gmail.com',
    'Telefono': '6566566566',
    'Fecha_Nacimiento': '12/02/2025',
    'Fecha_Registro': '12/02/1995'
  };

  print("");

  print("Iterar map con forEach:");
  Clientes.forEach((key, value) {
    print("$key, $value ");
  });

  print("");

  print("Iterar un mapa con forIn:");
  for (var key in Clientes.keys) {
    print("$key, ${Clientes[key]}");
  }
  print("");
  print("Mapa Productos");

  Map<String, dynamic> Productos = {
    'ID_Producto': 1,
    'Nombre': 'Jabón Zote',
    'Descripcion': 'Jabón en barra para lavar ropa',
    'Precio': 22.30,
    'Stock': 101,
    'Tipo': 'Limpieza',
    'Fecha_añadido': '22/01/1995'
  };

  print("");

  print("Iterar map con forEach:");
  Productos.forEach((key, value) {
    print("$key, $value ");
  });

  print("");

  print("Iterar un mapa con forIn:");
  for (var key in Productos.keys) {
    print("$key, ${Productos[key]}");
  }
}

