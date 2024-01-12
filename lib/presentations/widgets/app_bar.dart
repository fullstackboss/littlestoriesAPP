import 'package:flutter/material.dart';
import 'package:littlestories/configs/icons.dart';

class AppBarra extends StatelessWidget implements PreferredSizeWidget {
  final bool setting;
  final String titulo;

  const AppBarra({
    super.key,
    required this.setting,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo),
      centerTitle: !setting,
      actions: [
        if (setting)
          IconButton(
            onPressed: () {
              //context.pushNamed(PageSeetingStories.name);
            },
            icon: const Icon(IcoStrIcons.conSonido),
          ),
        //IconButton(onPressed: () {}, icon: Icon(IcoStrIcons.conSonido))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
