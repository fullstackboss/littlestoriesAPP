import 'package:go_router/go_router.dart';
import 'package:littlestories/presentations/page/home_page.dart';
import 'package:littlestories/presentations/page/internas/screens.dart';

final GoRouter routerStories = GoRouter(
  initialLocation: '/welcome',
  routes: [
    GoRoute(
      path: '/welcome',
      name: PageWelcome.name,
      builder: (context, state) => const PageWelcome(),
    ),
    GoRoute(
      path: '/home',
      name: PageHome.name,
      builder: (context, state) => const PageHome(),
    ),
    GoRoute(
      path: '/setting',
      name: PageSeetingStories.name,
      builder: (context, state) => const PageSeetingStories(),
    ),
  ],
);
