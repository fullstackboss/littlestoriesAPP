import 'package:littlestories/data/data_characters.dart';
import 'package:littlestories/domains/models/model_characters.dart';

final listaCharacters = datosCharacters.map((data) {
  return Character(
    id: data["id"],
    nombre: data["nombre"],
    imagen: data["imagen"],
    edad: data["edad"],
    personalidad: data["personalidad"],
    frase: data["frase"],
    actividad: data["actividad"],
    moraleja: data["moraleja"],
  );
}).toList();
