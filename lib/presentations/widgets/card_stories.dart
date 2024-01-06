import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';

class CardCuentos extends StatelessWidget {
  final String foto;
  final String titulo;
  final String subtitulo;
  final VoidCallback onPress;

  const CardCuentos({
    super.key,
    required this.foto,
    required this.titulo,
    required this.subtitulo,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * 0.90;
    double screenHeight = screenWidth / 2;

    return Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade200, // Color del borde
            width: 1.0, // Ancho del borde
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Color de la sombra
              spreadRadius: 2.0, // Esparcimiento de la sombra
              blurRadius: 8.0, // Difuminado de la sombra
              offset: const Offset(0, 2), // Desplazamiento de la sombra
            ),
          ],
        ),
        child: CardContenido(
          foto2: foto,
          titulo2: titulo,
          subtitulo2: subtitulo,
          onPress2: onPress,
        ) // Reemplaza YourCardContent con el contenido real
        );
  }
}

class CardContenido extends StatelessWidget {
  final String foto2;
  final String titulo2;
  final String subtitulo2;
  final VoidCallback onPress2;

  const CardContenido({
    super.key,
    required this.foto2,
    required this.titulo2,
    required this.subtitulo2,
    required this.onPress2,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titulo2,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w800)),
                  const SizedBox(height: 6),
                  Text(subtitulo2),
                  const SizedBox(height: 10),
                  FilledButton(
                    onPressed: () {
                      onPress2();
                    },
                    child: const Text('ENTRAR'),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                child: Image.asset(
                  'assets/images/stories/portraits/$foto2',
                  fit: BoxFit.contain,
                  height: double.infinity,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
