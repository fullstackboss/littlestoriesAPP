class Character {
  final int id;
  final String nombre;
  final String imagen;
  final int edad;
  final String personalidad;
  final String frase;
  final String actividad;
  final String moraleja;

  Character({
    required this.id,
    required this.nombre,
    required this.imagen,
    required this.edad,
    required this.personalidad,
    required this.frase,
    required this.actividad,
    required this.moraleja,
  });

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json["id"],
        nombre: json["nombre"],
        imagen: json["imagen"],
        edad: json["edad"],
        personalidad: json["personalidad"],
        frase: json["frase"],
        actividad: json["actividad"],
        moraleja: json["moraleja"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "imagen": imagen,
        "edad": edad,
        "personalidad": personalidad,
        "frase": frase,
        "actividad": actividad,
        "moraleja": moraleja,
      };
}
