import 'package:flutter/material.dart';

class DescripcionStories extends StatelessWidget {
  final String texto;
  final int nroEscenas;
  final int actualEscena;
  const DescripcionStories({
    super.key,
    required this.texto,
    required this.nroEscenas,
    required this.actualEscena,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
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
                Colors.white.withOpacity(0.0),
                Colors.white.withOpacity(0.0)
              ],
            ),
            //Fin degrade debajo de letras
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Text(
            texto + nroEscenas.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
