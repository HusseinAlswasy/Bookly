import 'package:bookly/Feature/home/presentation/views/home_view.dart';
import 'package:bookly/Feature/search/presentation/views/search_view.dart';
import 'package:bookly/Feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../Feature/home/presentation/views/book_details_view.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static const KDetailsView = '/BookDetailsView';
  static const KSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
