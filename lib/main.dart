import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home_screen/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home_screen/presentation/manger/cubit/newest_featured_books_cubit.dart';
import 'package:bookly_app/features/home_screen/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..featchFeaturedBooks()),
        BlocProvider(create: (context)=> NewestFeaturedBooksCubit(getIt.get<HomeRepoImpl>())),
        ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: scaffoldColor),
      ),
    );
  }
}
