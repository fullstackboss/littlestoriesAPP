import 'package:flutter/material.dart';
import 'package:littlestories/domains/models/model_stories.dart';
import 'package:lottie/lottie.dart';

class EscenaWidget extends StatelessWidget {
  final Escena escena;

  const EscenaWidget({
    Key? key,
    required this.escena,
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
              child: LottieBuilder.asset('assets/animations/${escena.imagen}')),
        ),
        // Contenedor para el texto con degradado oscuro en la parte inferior
        Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 140.0,
                decoration: BoxDecoration(
                  //degrade debajo de letras
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white.withOpacity(0)
                    ],
                  ),
                  //Fin degrade debajo de letras
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                child: Text(
                  escena.texto,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
