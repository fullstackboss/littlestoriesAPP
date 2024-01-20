import 'package:flutter/material.dart';
import 'package:littlestories/domains/models/model_stories.dart';
import 'package:littlestories/presentations/widgets/desc_stories.dart';
import 'package:lottie/lottie.dart';

class ListStorieScene extends StatelessWidget {
  final Escena escena;
  final int totalEscenas;
  final int actualEscena;

  const ListStorieScene({
    Key? key,
    required this.escena,
    required this.totalEscenas,
    required this.actualEscena,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Image.asset('assets/images/stories/scenes/${escena.background}',
            width: screenWidth, fit: BoxFit.cover),
        SizedBox.expand(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: LottieBuilder.asset(
                  'assets/animations/stories/${escena.imagen}')),
        ),
        Positioned(
          width: screenWidth * 0.2,
          right: 6,
          top: 6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
                10.0), // Ajusta el radio según tus preferencias
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(6.0),
              color: Colors.black.withOpacity(0.3),
              child: Text(
                '${actualEscena + 1} / $totalEscenas',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),

        // Contenedor para el texto con degradado oscuro en la parte inferior
        Align(
          alignment: Alignment.bottomCenter,
          child: DescripcionStories(
              texto: escena.texto,
              nroEscenas: totalEscenas,
              actualEscena: actualEscena),
        ),
      ],
    );
  }
}
