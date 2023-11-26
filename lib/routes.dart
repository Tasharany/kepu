import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kepu/Screens/LoginScreen.dart';
import 'package:kepu/Screens/MovieScreen.dart';
import 'package:kepu/Screens/Profile/ProfileEditScreen.dart';
import 'package:kepu/Screens/SearchScreen.dart';
import 'package:kepu/Screens/TvShowScreen.dart';
import 'package:kepu/Screens/Pouch/CinemaPouch.dart';
import 'package:kepu/Screens/Pouch/PocketPouch.dart';
import 'package:kepu/Screens/Pouch/ChartPouch.dart';
import 'package:kepu/Screens/Spin/CinemaSpin.dart';
import 'package:kepu/Screens/Home/CinemaHome.dart';
import 'package:kepu/Screens/Home/GameHome.dart';
import 'package:kepu/Screens/Home/MusicHome.dart';
import 'package:kepu/Screens/Spin/GameSpin.dart';
import 'package:kepu/Screens/Spin/MusicSpin.dart';
import 'package:kepu/screen/home.dart';
import 'Screens/DetailScreen.dart';
import 'Screens/NavScreen.dart';
import 'Screens/ProfileScreen.dart';
import 'auth/main_page.dart';

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
    pageBuilder: defaultPageBuilder<Home_Screen>(Home_Screen()), // should be routed to the To-do list screen
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
    pageBuilder: defaultPageBuilder<CinemaPouch>(CinemaPouch()),
  ),
  GoRoute(
    path: '/pocketpouch',
    builder: (context, state) => PocketPouch(),
    pageBuilder: defaultPageBuilder<PocketPouch>(PocketPouch()),
  ),
  GoRoute(
    path: '/chartpouch',
    builder: (context, state) => ChartPouch(),
    pageBuilder: defaultPageBuilder<ChartPouch>(ChartPouch()),
  ),
  GoRoute(
    path: '/cinemahome',
    builder: (context, state) => CinemaHome(),
    pageBuilder: defaultPageBuilder<CinemaHome>(CinemaHome()),
  ),
  GoRoute(
    path: '/gamehome',
    builder: (context, state) => GameHome(),
    pageBuilder: defaultPageBuilder<GameHome>(GameHome()),
  ),
  GoRoute(
    path: '/musichome',
    builder: (context, state) => MusicHome(),
    pageBuilder: defaultPageBuilder<MusicHome>(MusicHome()),
  ),
  GoRoute(
    path: '/spin',
    builder: (context, state) => CinemaSpin(),
    pageBuilder: defaultPageBuilder<CinemaSpin>(CinemaSpin()),
  ),
  GoRoute(
    path: '/editprofile',
    builder: (context, state) => ProfileEditScreen(),
    pageBuilder: defaultPageBuilder<ProfileEditScreen>(ProfileEditScreen()),
  ),
  GoRoute(
    path: '/gamespin',
    builder: (context, state) => GameSpin(),
    pageBuilder: defaultPageBuilder<GameSpin>(GameSpin()),
  ),
  GoRoute(
    path: '/musicspin',
    builder: (context, state) => MusicSpin(),
    pageBuilder: defaultPageBuilder<MusicSpin>(MusicSpin()),
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
