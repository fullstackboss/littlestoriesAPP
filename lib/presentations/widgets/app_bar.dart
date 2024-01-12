import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlestories/configs/icons.dart';
import 'package:littlestories/presentations/page/internas/screens.dart';
import 'package:littlestories/presentations/page/setting.dart';

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
              context.pushNamed(PageSeetingStories.name);
            },
            icon: const Icon(IcoStrIcons.configurar),
          ),
        //IconButton(onPressed: () {}, icon: Icon(IcoStrIcons.conSonido))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
