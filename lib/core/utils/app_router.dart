import 'package:book_app/features/home/presentation/views/book_detiles_view.dart';
import 'package:book_app/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presention/views/splash_view.dart';

abstract class AppRouter{
  static final router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder: (context,state) =>const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context,state) =>const HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context,state) =>const BookDetailsView(),
      ),
    ],
  );

}