// Definición de la clase Animal
class Animal {
  // Atributos de la clase
  String nombre;
  String raza;

  // Constructor de la clase
  Animal(this.nombre, this.raza);

  // Método para comer
  void comer() {
    print('$nombre está comiendo.');
  }
} // fin clase Animal

// Definición de la clase Perro que hereda de Animal
class Perro extends Animal {
  // Constructor de la clase Perro
  Perro(String nombre, String raza) : super(nombre, raza);

  // Método para ladrar
  void ladra() {
    print('$nombre está ladrando.');
  } // fin ladra

  // Método para correr
  void corre() {
    print('$nombre está corriendo.');
  } // fin corre
}

void main() {
  print("Jesús Daniel Flores Rodríguez 22308051281186 grupo 6°J");
  // Crear una instancia de Perro
  Perro miPerro = Perro('Max', 'Labrador');

  // Acceder a los atributos y métodos de la clase Animal
  print('Nombre: ${miPerro.nombre}');
  print('Raza: ${miPerro.raza}');
  miPerro.comer();

  // Acceder a los métodos específicos de la clase Perro
  miPerro.ladra();
  miPerro.corre();
}
