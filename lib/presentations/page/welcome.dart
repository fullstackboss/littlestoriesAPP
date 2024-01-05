import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlestories/presentations/page/home_page.dart';
import 'package:littlestories/presentations/widgets/app_bar.dart';

class PageWelcome extends StatelessWidget {
  static const String name = 'welcome';
  const PageWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenidos Stories',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 30,
            ),
            FilledButton(
              onPressed: () {
                context.pushNamed(PageHome.name);
              },
              child: const Text('Comenzar'),
            )
          ],
        ),
      ),
    );
  }
}
