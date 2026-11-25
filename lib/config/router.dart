import 'package:go_router/go_router.dart';
import 'package:todolist/view/home/home_view.dart';
import 'package:todolist/view/login/login_view.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'login',
      path: '/',
      builder: (context, state) => LoginView(),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => HomeView(),
    ),
  ],
);
