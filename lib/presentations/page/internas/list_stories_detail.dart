import 'package:flutter/material.dart';
import 'package:littlestories/domains/models/model_stories.dart';
import 'package:littlestories/presentations/page/internas/lista_stories_detail_escenes.dart';
import 'package:littlestories/presentations/widgets/app_bar.dart';

class PageListStoriesDetails extends StatelessWidget {
  final Cuento cuento;
  const PageListStoriesDetails({
    super.key,
    required this.cuento,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarra(),
      body: Column(
        children: [
          Expanded(
              child: PageView.builder(
            itemCount: cuento.escenas.length,
            itemBuilder: (context, index) {
              final escena = cuento.escenas[index];
              return EscenaWidget(escena: escena);
            },
          ))
        ],
      ),
    );
  }
}
