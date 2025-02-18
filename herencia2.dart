import 'dart:io';

// Clase Empleados
class Empleados {
  int ID_Empleado;
  String Nombre;
  String Apellido;
  String Puesto;
  double Salario;
  DateTime Fecha_Contratacion;
  bool Estado;

  Empleados(this.ID_Empleado, this.Nombre, this.Apellido, this.Puesto, this.Salario, this.Fecha_Contratacion, this.Estado);

  void mostrarDatos() {
    print('ID Empleado: $ID_Empleado');
    print('Nombre: $Nombre');
    print('Apellido: $Apellido');
    print('Puesto: $Puesto');
    print('Salario: $Salario');
    print('Fecha de Contratación: $Fecha_Contratacion');
    print('Estado: ${Estado ? "Activo" : "Inactivo"}');
  }
}

// Clase Pedro que hereda de Empleados
class Pedro extends Empleados {
  Pedro(int ID_Empleado, String Nombre, String Apellido, String Puesto, double Salario, DateTime Fecha_Contratacion, bool Estado)
      : super(ID_Empleado, Nombre, Apellido, Puesto, Salario, Fecha_Contratacion, Estado);
}

// Clase Detalles_Orden
class Detalles_Orden {
  int ID_Detalles;
  int ID_Orden;
  int ID_Producto;
  int Cantidad;
  double Precio_Unitario;
  double Subtotal;
  String Observaciones;

  Detalles_Orden(this.ID_Detalles, this.ID_Orden, this.ID_Producto, this.Cantidad, this.Precio_Unitario, this.Subtotal, this.Observaciones);

  void mostrarDatos() {
    print('ID Detalles: $ID_Detalles');
    print('ID Orden: $ID_Orden');
    print('ID Producto: $ID_Producto');
    print('Cantidad: $Cantidad');
    print('Precio Unitario: $Precio_Unitario');
    print('Subtotal: $Subtotal');
    print('Observaciones: $Observaciones');
  }
}

// Clase Orden1 que hereda de Detalles_Orden
class Orden1 extends Detalles_Orden {
  Orden1(int ID_Detalles, int ID_Orden, int ID_Producto, int Cantidad, double Precio_Unitario, double Subtotal, String Observaciones)
      : super(ID_Detalles, ID_Orden, ID_Producto, Cantidad, Precio_Unitario, Subtotal, Observaciones);
}

void main() {
  // Ejemplo de captura de datos desde la interfaz (consola)
  print('Ingrese los datos del empleado:');
  print('ID Empleado:');
  int idEmpleado = int.parse(stdin.readLineSync()!);
  print('Nombre:');
  String nombre = stdin.readLineSync()!;
  print('Apellido:');
  String apellido = stdin.readLineSync()!;
  print('Puesto:');
  String puesto = stdin.readLineSync()!;
  print('Salario:');
  double salario = double.parse(stdin.readLineSync()!);
  print('Fecha de Contratación (yyyy-mm-dd):');
  DateTime fechaContratacion = DateTime.parse(stdin.readLineSync()!);
  print('Estado (true/false):');
  bool estado = stdin.readLineSync()!.toLowerCase() == 'true';

  Empleados empleado = Empleados(idEmpleado, nombre, apellido, puesto, salario, fechaContratacion, estado);
  empleado.mostrarDatos();

  print('\nIngrese los detalles de la orden:');
  print('ID Detalles:');
  int idDetalles = int.parse(stdin.readLineSync()!);
  print('ID Orden:');
  int idOrden = int.parse(stdin.readLineSync()!);
  print('ID Producto:');
  int idProducto = int.parse(stdin.readLineSync()!);
  print('Cantidad:');
  int cantidad = int.parse(stdin.readLineSync()!);
  print('Precio Unitario:');
  double precioUnitario = double.parse(stdin.readLineSync()!);
  print('Observaciones:');
  String observaciones = stdin.readLineSync()!;

  double subtotal = cantidad * precioUnitario;

  Detalles_Orden detallesOrden = Detalles_Orden(idDetalles, idOrden, idProducto, cantidad, precioUnitario, subtotal, observaciones);
  detallesOrden.mostrarDatos();
}
