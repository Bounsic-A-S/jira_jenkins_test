void main() {
  final pato = Pato("Aleman");
  print(pato.raza);
}

class Pato {
  String raza;
  Pato(this.raza);
}

class Christian {
  String nombre;
  Christian({required this.nombre});
}
