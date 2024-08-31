import 'package:go_router/go_router.dart';
import 'package:pet_track/interface/auth/create_account/create_account.dart';
import 'package:pet_track/interface/auth/login_to_account/login.dart';
import 'package:pet_track/interface/home/home.dart';

class MasterNavigator {
  static GoRouter appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'intial-screen',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/auth/create-account',
        name: 'create-account',
        builder: (context, state) => const CreateAccountScreen(),
      ),
      GoRoute(
        path: '/auth/login-to-account',
        name: 'login',
        builder: (context, state) => const LoginToAccountScreen(),
      ),
    ],
  );
}
