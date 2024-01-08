class Cuento {
  final String titulo;
  final String subtitulo;
  final String musica;
  final List<Escena> escenas;
  final String portada;
  final String id;

  Cuento({
    required this.titulo,
    required this.subtitulo,
    required this.musica,
    required this.escenas,
    required this.portada,
    required this.id,
  });

  factory Cuento.fromJson(Map<String, dynamic> json) => Cuento(
        titulo: json["titulo"],
        subtitulo: json["subtitulo"],
        musica: json["musica"],
        escenas:
            List<Escena>.from(json["escenas"].map((x) => Escena.fromJson(x))),
        portada: json["portada"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "subtitulo": subtitulo,
        "musica": musica,
        "escenas": List<dynamic>.from(escenas.map((x) => x.toJson())),
        "portada": portada,
        "id": id,
      };
}

class Escena {
  final int idEscena;
  final String imagen;
  final String background;
  final String sonido;
  final String texto;

  Escena({
    required this.idEscena,
    required this.imagen,
    required this.background,
    required this.sonido,
    required this.texto,
  });

  factory Escena.fromJson(Map<String, dynamic> json) => Escena(
        idEscena: json["id_escena"],
        imagen: json["imagen"],
        background: json["background"],
        sonido: json["sonido"],
        texto: json["texto"],
      );

  Map<String, dynamic> toJson() => {
        "id_escena": idEscena,
        "imagen": imagen,
        "background": background,
        "sonido": sonido,
        "texto": texto,
      };
}
