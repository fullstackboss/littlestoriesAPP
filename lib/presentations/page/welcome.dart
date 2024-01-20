import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlestories/presentations/page/home_page.dart';
import 'package:lottie/lottie.dart';

class PageWelcome extends StatelessWidget {
  static const String name = 'welcome';
  const PageWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    Random random = Random();
    int numeroAleatorio = random.nextInt(4);

    List intros = [
      'intro1.json',
      'intro2.json',
      'intro3.json',
      'intro4.json',
      'intro5.json',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /* const Text('Cuentos Animados',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.purple)),
            SizedBox(
              height: screenHeight * 0.05,
            ), */
            Expanded(
              flex: 7,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    width: screenWidth * 0.7,
                    height: screenWidth * 0.7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.purple.shade50,
                    ),
                  ),
                  LottieBuilder.asset(
                    'assets/animations/intro/${intros[numeroAleatorio]}',
                    width: screenWidth * 0.7,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      children: [
                        Text('Bienvenidos',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        SizedBox(height: 8),
                        Text(
                            'Explora emocionantes aventuras llenas de magia y diversión.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                      ],
                    ),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFFFE4F5B),
                      ),
                      onPressed: () {
                        context.pushNamed(PageHome.name);
                      },
                      child: const Text('Comenzar'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
