import 'package:flutter/material.dart';
import 'package:littlestories/domains/models/model_stories.dart';

class EscenaWidget extends StatelessWidget {
  final Escena escena;

  const EscenaWidget({
    Key? key,
    required this.escena,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/stories/scenes/${escena.imagen}',
          width: 320,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 40,
        ),
        Text(escena.texto),
      ],
    );
  }
}
