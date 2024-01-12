import 'package:flutter/material.dart';
import 'package:littlestories/domains/repositorio/lista_cuentos.dart';
import 'package:littlestories/presentations/page/internas/list_stories_detail.dart';
import 'package:littlestories/presentations/widgets/card_stories.dart';

class PageListStories extends StatelessWidget {
  const PageListStories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      padding: const EdgeInsets.all(25),
      itemCount: listaCuento.length,
      itemBuilder: (context, index) {
        return CardCuentos(
          foto: listaCuento[index].portada,
          subtitulo: listaCuento[index].subtitulo,
          titulo: listaCuento[index].titulo,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageListStoriesDetails(
                  cuento: listaCuento[index],
                  pistaMusical: listaCuento[index].musica,
                ),
              ),
            );
          },
        );
        /* GestureDetector(
          child: ListTile(
            leading: Image.asset(
                'assets/images/stories/portraits/${listaCuento[index].portada}',
                width: 50),
            title: Text(listaCuento[index].titulo),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    PageListStoriesDetails(cuento: listaCuento[index]),
              ),
            );
          },
        ); */
      },
    );
  }
}
