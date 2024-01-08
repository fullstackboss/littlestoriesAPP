import 'package:littlestories/data/data_stories.dart';
import 'package:littlestories/domains/models/model_stories.dart';

final listaCuento = datosCuentos.map((data) {
  return Cuento(
    titulo: data["titulo"],
    subtitulo: data["subtitulo"],
    musica: data["musica"],
    escenas: (data["escenas"] as List<Map<String, dynamic>>).map((escenaData) {
      return Escena(
        idEscena: escenaData["id_escena"],
        imagen: escenaData["imagen"],
        background: escenaData["background"],
        sonido: escenaData["sonido"],
        texto: escenaData["texto"],
      );
    }).toList(),
    portada: data["portada"],
    id: data["id"],
  );
}).toList();
