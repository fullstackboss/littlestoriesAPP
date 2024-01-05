import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlestories/configs/icons.dart';

class PageSeetingStories extends StatelessWidget {
  static const String name = 'setting';
  const PageSeetingStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Pagina Setting'),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(IcoStrIcons.volver),
                label: const Text('Aceptar'))
          ],
        ),
      ),
    );
  }
}
