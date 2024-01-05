import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlestories/configs/icons.dart';
import 'package:littlestories/presentations/page/internas/screens.dart';
import 'package:littlestories/presentations/page/setting.dart';

class AppBarra extends StatelessWidget implements PreferredSizeWidget {
  const AppBarra({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Little Stories'),
      actions: [
        IconButton(
          onPressed: () {
            context.pushNamed(PageSeetingStories.name);
          },
          icon: const Icon(IcoStrIcons.configurar),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
