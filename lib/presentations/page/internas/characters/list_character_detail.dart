import 'package:flutter/material.dart';

class PageListCharactersDetails extends StatelessWidget {
  final String nombre;
  final String imagen;
  const PageListCharactersDetails({
    super.key,
    required this.nombre,
    required this.imagen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(nombre)]),
      ),
    );
  }
}
