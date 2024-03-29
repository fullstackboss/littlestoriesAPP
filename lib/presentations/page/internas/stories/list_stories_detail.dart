import 'package:flutter/material.dart';
import 'package:littlestories/domains/models/model_stories.dart';
import 'package:littlestories/presentations/page/internas/stories/lista_stories_escenes.dart';
import 'package:littlestories/presentations/widgets/app_bar_music.dart';

class PageListStoriesDetails extends StatelessWidget {
  final String pistaMusical;
  final Cuento cuento;
  const PageListStoriesDetails({
    super.key,
    required this.cuento,
    required this.pistaMusical,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMusica(
        pistaMusical: pistaMusical,
        titulo: cuento.titulo,
      ),
      body: Column(
        children: [
          //ReproduceAudio(pistaMusica: pistaMusical),
          Expanded(
            child: PageView.builder(
              itemCount: cuento.escenas.length,
              itemBuilder: (context, index) {
                final escena = cuento.escenas[index];
                return Stack(
                  children: [
                    SizedBox.expand(
                      child: ListStorieScene(
                        escena: escena,
                        totalEscenas: cuento.escenas.length,
                        actualEscena: index,
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
