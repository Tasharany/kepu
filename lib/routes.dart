import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:kepu/Screens/LoginScreen.dart';
import 'package:kepu/Screens/MovieScreen.dart';
import 'package:kepu/Screens/Profile/ProfileEditScreen.dart';
import 'package:kepu/Screens/SearchScreen.dart';
import 'package:kepu/Screens/TvShowScreen.dart';
import 'package:kepu/providers/theme_manager.dart';
import 'package:kepu/screen/todo.dart';
import 'Screens/DetailScreen.dart';
import 'Screens/Music/Search/main_search.dart';
import 'Screens/Music/Settings/about_screen.dart';
import 'Screens/Music/Settings/appearence.dart';
import 'Screens/Music/Settings/download_screen.dart';
import 'Screens/Music/Settings/equalizer_screen.dart';
import 'Screens/Music/Settings/history_screen.dart';
import 'Screens/Music/Settings/playback_screen.dart';
import 'Screens/Music/Settings/providers_screen.dart';
import 'Screens/Music/Settings/setting_screen.dart';
import 'Screens/Music/artists/artist_screen.dart';
import 'Screens/Music/download_screen.dart';
import 'Screens/Music/lists/list_screen.dart';
import 'Screens/Music/main_screen.dart';
import 'Screens/Music/main_screen/music_home_screen.dart';
import 'Screens/Music/playlists/favorites_details.dart';
import 'Screens/Music/playlists/playlists_screen.dart';
import 'Screens/NavScreen.dart';
import 'Screens/Pouch/PouchScreen.dart';
import 'Screens/ProfileScreen.dart';
import 'Screens/RandomScreen.dart';


GoRouter router = GoRouter(
   // navigatorKey: GetIt.I<GlobalKey<NavigatorState>>(),
    initialLocation: '/',
    routes: [
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
    builder: (context, state) =>  ToDoListScreen(),
    pageBuilder: defaultPageBuilder<ToDoListScreen>(ToDoListScreen()), // is routed to the To-do list screen
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
      ShellRoute(
          builder: (context, state, child) => Directionality(
              textDirection: GetIt.I<ThemeManager>().isRightToLeftDirection
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              child: child),
          routes: [
            StatefulShellRoute.indexedStack(
              branches: branches,
              builder: (context, state, navigationShell) =>
                  ScaffoldWithNestedNavigation(navigationShell: navigationShell),
            ),
          ]),
]);
List<StatefulShellBranch> branches = [
  StatefulShellBranch(
    routes: [
      // top route inside branch
      GoRoute(
          path: '/',
          pageBuilder: (context, state) =>
           //const NoTransitionPage(child: MusicHomeScreen()),
          const NoTransitionPage(child:DetailScreen()),
          routes: [
            GoRoute(
              path: 'list',
              pageBuilder: (context, state) =>
                  CupertinoPage(child: ListScreen(list: state.extra as Map)),
            ),
            GoRoute(
              path: 'find',
              pageBuilder: (context, state) =>
              const MaterialPage(child: MainSearchScreen()),
              routes: [
                GoRoute(
                  path: 'list',
                  pageBuilder: (context, state) => CupertinoPage(
                      child: ListScreen(list: state.extra as Map)),
                ),
                GoRoute(
                  path: 'artist',
                  pageBuilder: (context, state) => CupertinoPage(
                      child:
                      ArtistScreen(artist: Map.from(state.extra as Map))),
                ),
              ],
            ),
          ]),
    ],
  ),
  StatefulShellBranch(
    routes: [
      // top route inside branch
      GoRoute(
          path: '/playlists',
          pageBuilder: (context, state) =>
          const NoTransitionPage(child: PlaylistsScreen()),
          routes: [
            GoRoute(
              path: 'favorite',
              pageBuilder: (context, state) =>
              const CupertinoPage(child: FavoriteDetails()),
            ),
            GoRoute(
              path: 'saved',
              pageBuilder: (context, state) =>
                  CupertinoPage(child: ListScreen(list: state.extra as Map)),
            ),
          ]),
    ],
  ),
  StatefulShellBranch(
    routes: [
      // top route inside branch
      GoRoute(
        path: '/downloads',
        pageBuilder: (context, state) =>
        const NoTransitionPage(child: DownloadsScreen()),
      ),
    ],
  ),
  StatefulShellBranch(
    routes: [
      // top route inside branch
      GoRoute(
          path: '/settings',
          pageBuilder: (context, state) =>
          const NoTransitionPage(child: SettingScreen()),
          routes: [
            GoRoute(
              path: 'appearence',
              pageBuilder: (context, state) =>
              const CupertinoPage(child: AppLayout()),
            ),
            GoRoute(
                path: 'playback',
                pageBuilder: (context, state) =>
                const CupertinoPage(child: PlaybackScreen()),
                routes: [
                  GoRoute(
                    path: 'equilizer',
                    pageBuilder: (context, state) =>
                    const CupertinoPage(child: EqualizerScreen()),
                  ),
                ]),
            GoRoute(
              path: 'history',
              pageBuilder: (context, state) =>
              const CupertinoPage(child: HistoryScreen()),
            ),
            // GoRoute(
            //   path: 'upi',
            //   pageBuilder: (context, state) => CupertinoPage(
            //       child: PaymentScreen(
            //     razorPay: state.extra as bool,
            //   )),
            // ),
            GoRoute(
              path: 'providers',
              pageBuilder: (context, state) =>
              const CupertinoPage(child: ProvidersScreen()),
            ),
            GoRoute(
              path: 'download',
              pageBuilder: (context, state) =>
              const CupertinoPage(child: DownloadScreen()),
            ),
            GoRoute(
              path: 'about',
              pageBuilder: (context, state) =>
              const CupertinoPage(child: AboutScreen()),
            ),
          ]),
    ],
  ),
];
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
