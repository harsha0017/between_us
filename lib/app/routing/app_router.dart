import 'package:between_us/app/constants/storage_constants.dart';
import 'package:between_us/app/dependencies/configure_dependencies.dart';
import 'package:between_us/main.dart';
import 'package:between_us/modules/connect/connect_screen.dart';
import 'package:between_us/modules/draft_post/draft_post_screen.dart';
import 'package:between_us/modules/home/home_screen.dart';
import 'package:flex_storage/storage_manager.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/connect',
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const MyHomePage(title: ''),
      ),
      GoRoute(
        path: '/connect',
        builder: (_, __) => const ConnectScreen(),
        redirect: (context, state) async {
          final storage = getIt<StorageManager>();
          final firstSessionClient = await storage
              .getGenericKeyValueStorageClient<bool>(
                StorageConstants.isFirstSessionCompleted,
              );
          final isFirstSession = await firstSessionClient.read<bool>();

          return isFirstSession != null ? '/home' : null;
        },
      ),
      GoRoute(path: '/home', builder: (_, __) => const HomeScreen()),
      GoRoute(path: '/post', builder: (_, __) => DraftPostScreen()),
    ],
  );
}
