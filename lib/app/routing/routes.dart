import 'package:between_us/main.dart';
import 'package:between_us/modules/home/home_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const MyHomePage(title: ''),
      ),
      GoRoute(path: '/home', builder: (_, __) => const HomeScreen()),
    ],
  );
}
