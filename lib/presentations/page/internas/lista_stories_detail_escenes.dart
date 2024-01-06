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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Stack(
        children: [
          SizedBox.expand(
            child: LottieBuilder.asset('assets/animations/${escena.imagen}'),
          ),
          // Contenedor para el texto con degradado oscuro en la parte inferior
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.0), Colors.transparent],
                ),
              ),
              child: Center(
                child: Text(
                  escena.texto,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
