import 'package:flutter/material.dart';

class PageListCharactersDetails extends StatelessWidget {
  final String nombre;
  final String imagen;
  final String tag;
  const PageListCharactersDetails({
    super.key,
    required this.nombre,
    required this.imagen,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: tag,
                child: Image.asset('assets/images/characters/$imagen')),
            const SizedBox(height: 20),
            Text(nombre),
          ],
        ),
      ),
    );
  }
}
