class figura{
  
  int _largo;
  int _ancho;

  figura(this._largo, this._ancho);

  void mostrar(){
    print("Largo: $_largo");
    print("Ancho: $_ancho");
  }//funcion mostrar

  void calcularArea(){
  int area = _largo * _ancho;
  print("El área es: $area");
}//fin de la función calcularArea

  void calcularPerimetro(){
    int perimetro = 2 * (_largo + _ancho);
    print("El perímetro es: $perimetro");
  }//fin de la función calcularPerimetro
}//clase figura



void main(){
  print("Jesús Daniel Flores Rodríguez 22308051281186 grupo 6°J");
  //Crear un objeto de la clase figura
  var rectangulo = figura(10,5);
  //Mostrar los atibutos del objeto
  rectangulo.mostrar();
  rectangulo.calcularArea();
  rectangulo.calcularPerimetro();
}//fin del main