import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kepu/Screens/Home/HomeScreen.dart';
import 'package:kepu/Screens/LoginScreen.dart';
import 'package:kepu/Screens/MainScreen.dart';
import 'package:kepu/Screens/MovieScreen.dart';
import 'package:kepu/Screens/NavScreen.dart';
import 'package:kepu/Screens/Profile/ProfileScreen.dart';
import 'package:kepu/Screens/Profile/ProfileEditScreen.dart';
import 'package:kepu/Screens/SearchScreen.dart';
import 'package:kepu/Screens/TvShowScreen.dart';
import 'package:kepu/Screens/ToDoListScreen.dart';
import 'package:kepu/Screens/Pouch/CinemaPouch.dart';
import 'package:kepu/Screens/Pouch/PocketPouch.dart';
import 'package:kepu/Screens/Pouch/ChartPouch.dart';
import 'package:kepu/Screens/Spin/CinemaSpin.dart';

GoRouter router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const NavScreen(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
    pageBuilder: defaultPageBuilder<LoginScreen>(const LoginScreen()),
  ),
  GoRoute(
    path: '/main',
    builder: (context, state) => const MainScreen(),
    pageBuilder: defaultPageBuilder<MainScreen>(const MainScreen()),
    //pageBuilder: defaultPageBuilder<MainScreen>(const HomeScreen()),
  ),
  GoRoute(
    path: '/search',
    builder: (context, state) => const SearchScreen(),
    pageBuilder: defaultPageBuilder<SearchScreen>(const SearchScreen()),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => const ProfileScreen(),
    pageBuilder: defaultPageBuilder<ProfileScreen>(const ProfileScreen()),
  ),
  GoRoute(
    path: '/todo',
    builder: (context, state) => const ToDoListScreen(),
    pageBuilder: defaultPageBuilder<ToDoListScreen>(const ToDoListScreen()),
  ),
  GoRoute(
    path: '/movie/:id',
    builder: (context, state) => MovieScreen(state.params['id']!),
  ),
  GoRoute(
    path: '/tv/:id',
    builder: (context, state) => TVShowScreen(state.params['id']!),
  ),
  GoRoute(
    path: '/pouch',
    builder: (context, state) => CinemaPouch(),
    pageBuilder: defaultPageBuilder<ToDoListScreen>(CinemaPouch()),
  ),
  GoRoute(
    path: '/pocketpouch',
    builder: (context, state) => PocketPouch(),
    pageBuilder: defaultPageBuilder<ToDoListScreen>(PocketPouch()),
  ),
  GoRoute(
    path: '/chartpouch',
    builder: (context, state) => ChartPouch(),
    pageBuilder: defaultPageBuilder<ToDoListScreen>(ChartPouch()),
  ),
  GoRoute(
    path: '/spin',
    builder: (context, state) => CinemaSpin(),
    pageBuilder: defaultPageBuilder<ToDoListScreen>(CinemaSpin()),
  ),
  GoRoute(
    path: '/editprofile',
    builder: (context, state) => ProfileEditScreen(),
    pageBuilder: defaultPageBuilder<ToDoListScreen>(ProfileEditScreen()),
  ),

]);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

Page<dynamic> Function(BuildContext, GoRouterState) defaultPageBuilder<T>(
        Widget child) =>
    (BuildContext context, GoRouterState state) {
      return buildPageWithDefaultTransition<T>(
        context: context,
        state: state,
        child: child,
      );
    };
