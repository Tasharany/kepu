import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kepu/Screens/LoginScreen.dart';
import 'package:kepu/Screens/MovieScreen.dart';
import 'package:kepu/Screens/Profile/ProfileEditScreen.dart';
import 'package:kepu/Screens/SearchScreen.dart';
import 'package:kepu/Screens/TvShowScreen.dart';
import 'package:kepu/screen/home.dart';
import 'Screens/DetailScreen.dart';
import 'Screens/NavScreen.dart';
import 'Screens/Pouch/PouchScreen.dart';
import 'Screens/ProfileScreen.dart';
import 'Screens/RandomScreen.dart';
import 'package:kepu/utils/router.dart';

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
    builder: (context, state) => const DetailScreen(),
    pageBuilder: defaultPageBuilder<DetailScreen>(const DetailScreen()),
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
    builder: (context, state) =>  Home_Screen(),
    pageBuilder: defaultPageBuilder<Home_Screen>(Home_Screen()), // is routed to the To-do list screen
  ),
  GoRoute(
    path: '/movie/:id',
    builder: (context, state) => MovieScreen(state.pathParameters['id']!),
  ),
  GoRoute(
    path: '/tv/:id',
    builder: (context, state) => TVShowScreen(state.pathParameters['id']!),
  ),
  GoRoute(
    path: '/pouch',
    builder: (context, state) => PouchScreen(),
    pageBuilder: defaultPageBuilder<PouchScreen>(PouchScreen()),
  ),
  GoRoute(
    path: '/spin',
    builder: (context, state) => RandomScreen(),
    pageBuilder: defaultPageBuilder<RandomScreen>(RandomScreen()),
  ),
  GoRoute(
    path: '/editprofile',
    builder: (context, state) => ProfileEditScreen(),
    pageBuilder: defaultPageBuilder<ProfileEditScreen>(ProfileEditScreen()),
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
