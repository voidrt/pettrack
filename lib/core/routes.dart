import 'package:go_router/go_router.dart';

import 'package:pet_track/interface/home/user_home.dart';
import 'package:pet_track/interface/initial/auth_check.dart';

class MasterNavigator {
  static GoRouter appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'intial-screen',
        builder: (context, state) => const AuthenticationCheck(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const UserHomePage(),
      ),
    ],
  );
}
