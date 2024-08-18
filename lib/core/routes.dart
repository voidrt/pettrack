import 'package:go_router/go_router.dart';
import 'package:pet_track/interface/home/home.dart';

class MasterNavigator {
  static GoRouter appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'Auth Check',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
