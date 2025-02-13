class Clientes {
  int ID_Cliente;
  String Nombre;
  String Apellido;
  String Email;
  String Telefono;
  DateTime Fecha_Nacimiento;
  DateTime Fecha_Registro;

  Clientes({
    required this.ID_Cliente,
    required this.Nombre,
    required this.Apellido,
    required this.Email,
    required this.Telefono,
    required this.Fecha_Nacimiento,
    required this.Fecha_Registro,
  });

  void capturarDatos(int id, String nombre, String apellido, String email, String telefono, DateTime fechaNacimiento, DateTime fechaRegistro) {
    ID_Cliente = id;
    Nombre = nombre;
    Apellido = apellido;
    Email = email;
    Telefono = telefono;
    Fecha_Nacimiento = fechaNacimiento;
    Fecha_Registro = fechaRegistro;
  }

  void mostrarDatos() {
    print('ID Cliente: $ID_Cliente');
    print('Nombre: $Nombre');
    print('Apellido: $Apellido');
    print('Email: $Email');
    print('Telefono: $Telefono');
    print('Fecha de Nacimiento: $Fecha_Nacimiento');
    print('Fecha de Registro: $Fecha_Registro');
  }
}

class Productos {
  int ID_Producto;
  String Nombre;
  String Descripcion;
  double Precio;
  int Stock;
  String Tipo;
  DateTime Fecha_Anadido;

  Productos({
    required this.ID_Producto,
    required this.Nombre,
    required this.Descripcion,
    required this.Precio,
    required this.Stock,
    required this.Tipo,
    required this.Fecha_Anadido,
  });

  void capturarDatos(int id, String nombre, String descripcion, double precio, int stock, String tipo, DateTime fechaAnadido) {
    ID_Producto = id;
    Nombre = nombre;
    Descripcion = descripcion;
    Precio = precio;
    Stock = stock;
    Tipo = tipo;
    Fecha_Anadido = fechaAnadido;
  }

  void mostrarDatos() {
    print('ID Producto: $ID_Producto');
    print('Nombre: $Nombre');
    print('Descripcion: $Descripcion');
    print('Precio: $Precio');
    print('Stock: $Stock');
    print('Tipo: $Tipo');
    print('Fecha Añadido: $Fecha_Anadido');
  }
}

class Ordenes {
  int ID_Orden;
  int ID_Cliente;
  DateTime FechaOrden;
  double Total;
  String Medio_Pago;
  String Estado;
  int Mesa;

  Ordenes({
    required this.ID_Orden,
    required this.ID_Cliente,
    required this.FechaOrden,
    required this.Total,
    required this.Medio_Pago,
    required this.Estado,
    required this.Mesa,
  });

  void capturarDatos(int idOrden, int idCliente, DateTime fechaOrden, double total, String medioPago, String estado, int mesa) {
    ID_Orden = idOrden;
    ID_Cliente = idCliente;
    FechaOrden = fechaOrden;
    Total = total;
    Medio_Pago = medioPago;
    Estado = estado;
    Mesa = mesa;
  }

  void mostrarDatos() {
    print('ID Orden: $ID_Orden');
    print('ID Cliente: $ID_Cliente');
    print('Fecha Orden: $FechaOrden');
    print('Total: $Total');
    print('Medio de Pago: $Medio_Pago');
    print('Estado: $Estado');
    print('Mesa: $Mesa');
  }
}

void main() {
  print("Tabla Clientes");
  Clientes cliente = Clientes(
    ID_Cliente: 1,
    Nombre: 'Juan',
    Apellido: 'Perez',
    Email: 'juan.perez@example.com',
    Telefono: '1234567890',
    Fecha_Nacimiento: DateTime(1990, 1, 1),
    Fecha_Registro: DateTime.now(),
  );

  cliente.mostrarDatos();
  print("");
  print("Tabla Productos");
  Productos producto = Productos(
    ID_Producto: 101,
    Nombre: 'Pizza Margherita',
    Descripcion: 'Pizza con tomate, mozzarella y albahaca',
    Precio: 8.50,
    Stock: 20,
    Tipo: 'Comida',
    Fecha_Anadido: DateTime.now(),
  );

  producto.mostrarDatos();
  print("");
  print("Tabla Ordenes");
  Ordenes orden = Ordenes(
    ID_Orden: 1001,
    ID_Cliente: 1,
    FechaOrden: DateTime.now(),
    Total: 8.50,
    Medio_Pago: 'Tarjeta de Crédito',
    Estado: 'Procesando',
    Mesa: 5,
  );

  orden.mostrarDatos();
}