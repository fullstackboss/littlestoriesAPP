import 'package:flutter/material.dart';
import 'package:littlestories/configs/icons.dart';
import 'package:littlestories/presentations/widgets/parlante_musica.dart';

class AppBarMusica extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  final String pistaMusical;

  const AppBarMusica({
    super.key,
    required this.titulo,
    required this.pistaMusical,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo),
      centerTitle: false,
      actions: [
        if (pistaMusical != "") ReproduceAudio(pistaMusica: pistaMusical)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
