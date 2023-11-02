import 'package:bookly_app/features/home_screen/presentation/views/details_screen.dart';
import 'package:bookly_app/features/home_screen/presentation/views/home_screen.dart';
import 'package:bookly_app/features/search_screen/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/spalsh_screen/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kDetailsView = '/detailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
