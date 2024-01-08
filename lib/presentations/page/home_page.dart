import 'package:flutter/material.dart';
import 'package:littlestories/configs/icons.dart';
import 'package:littlestories/presentations/widgets/app_bar.dart';
import 'package:littlestories/presentations/page/internas/screens.dart';

class PageHome extends StatefulWidget {
  static const String name = 'home';
  const PageHome({
    super.key,
  });

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int _selectedIndex = 0;
  final listWidgetStories = <Widget>[
    const PageListStories(),
    const PageCharacterStories(),
    const PageMusicStories(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarra(
        setting: true,
        titulo: 'Cuentos animados',
      ),
      body: listWidgetStories[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int value) => setState(() {
          _selectedIndex = value;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IcoStrIcons.bookOpen),
            label: 'Cuentos',
          ),
          BottomNavigationBarItem(
              icon: Icon(IcoStrIcons.personajes), label: 'Personajes'),
          BottomNavigationBarItem(
            icon: Icon(IcoStrIcons.conSonido),
            label: 'Musica',
          )
        ],
      ),
    );
  }
}
