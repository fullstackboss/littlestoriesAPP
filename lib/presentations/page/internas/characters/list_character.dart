import 'package:flutter/material.dart';
import 'package:littlestories/domains/repositorio/lista_personajes.dart';
import 'package:littlestories/presentations/page/internas/characters/list_character_detail.dart';

class PageCharacterStories extends StatelessWidget {
  const PageCharacterStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Número de columnas en la cuadrícula
              crossAxisSpacing: 20.0, // Espaciado horizontal entre elementos
              mainAxisSpacing: 20.0, // Espaciado vertical entre elementos
            ),
            itemCount: listaCharacters
                .length, // Número total de elementos en la cuadrícula
            itemBuilder: (BuildContext context, int index) {
              return CardCharacter(
                index: index,
              );
            }));
  }
}

class CardCharacter extends StatelessWidget {
  final int index;
  const CardCharacter({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PageListCharactersDetails(
                  nombre: listaCharacters[index].nombre,
                  imagen: listaCharacters[index].imagen,
                  tag: 'tag$index'),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Hero(
              tag: 'tag$index',
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.grey, // Color del borde
                    width: 0.0, // Ancho del borde
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/characters/${listaCharacters[index].imagen}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.red.withOpacity(0),
              child: Column(
                children: [
                  Text(
                    listaCharacters[index].nombre,
                    style: const TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ),
            /*  FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageListCharactersDetails(
                        nombre: listaCharacters[index].nombre,
                        imagen: listaCharacters[index].imagen,
                        tag: 'tag$index'),
                  ),
                );
              },
              child: Text(listaCharacters[index].nombre),
            ), */
          ],
        ),
      ),
    );
  }
}
