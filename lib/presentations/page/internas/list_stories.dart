import 'package:flutter/material.dart';
import 'package:littlestories/domains/repositorio/lista_cuentos.dart';
import 'package:littlestories/presentations/page/internas/list_stories_detail.dart';

class PageListStories extends StatelessWidget {
  const PageListStories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaCuento.length,
      itemBuilder: (context, index) {
        return GestureDetector(
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
        );
      },
    );
  }
}
