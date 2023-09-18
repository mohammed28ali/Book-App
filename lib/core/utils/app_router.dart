import 'package:book_app/features/home/presentation/views/book_detiles_view.dart';
import 'package:book_app/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/search/presintation/views/search_view.dart';
import '../../features/splash/presention/views/splash_view.dart';

abstract class AppRouter{
  static const kHomeView ='/homeView';
  static const kBookDetailsView ='/bookDetailsView';
  static const kSearchView ='/searchView';

  static final router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder: (context,state) =>const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context,state) =>const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context,state) =>const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context,state) =>const SearchView(),
      ),
    ],
  );

}