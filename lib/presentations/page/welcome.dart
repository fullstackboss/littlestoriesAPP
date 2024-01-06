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
    double screenWidth = MediaQuery.of(context).size.width * 0.6;
    double screenHeight = MediaQuery.of(context).size.height;

    Random random = Random();
    int numeroAleatorio = random.nextInt(3);

    List intros = [
      'intro1.json',
      'intro2.json',
      'intro4.json',
      'intro5.json',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                'assets/animations/${intros[numeroAleatorio]}',
                width: screenWidth,
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: const Column(
                  children: [
                    Text('Bienvenidos Stories',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600)),
                    SizedBox(height: 14),
                    Text(
                        'Explora emocionantes aventuras llenas de magia y diversión.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1,
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
      ),
    );
  }
}
