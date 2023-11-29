import 'package:audio_service/audio_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:kepu/Services/auth.dart';
import 'package:kepu/routes.dart';
import 'package:provider/provider.dart';
//music
import 'dart:io';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../generated/l10n.dart';
import 'package:kepu/providers/audio_handler.dart';
import 'package:kepu/providers/media_manager.dart';
import 'package:kepu/providers/theme_manager.dart';
import 'package:kepu/services/server.dart';
import 'package:kepu/ui/themes/dark.dart';
import 'package:kepu/ui/themes/light.dart';
import 'package:kepu/utils/playback_cache.dart';
import 'package:kepu/utils/router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'config/routes/routes.dart';
import 'config/theme/theme.dart';
import 'injector.dart' as di;
import 'injector.dart';
//games

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await Firebase.initializeApp();

  await Hive.initFlutter();
  await openBox('HomeCache');
  await openBox('settings');
  await openBox('downloads');
  await openBox('favorites');
  await openBox('songHistory');
  await openBox('playlists');

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
    overlays: [SystemUiOverlay.top],
  );
  if (Platform.isAndroid) {
    await FlutterDisplayMode.setHighRefreshRate();
  }

  GetIt.I.registerSingleton<AudioHandler>(await initAudioService());
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  GetIt.I.registerSingleton<GlobalKey<NavigatorState>>(navigatorKey);
  MediaManager mediaManager = MediaManager();
  ThemeManager themeManager = ThemeManager();
  GetIt.I.registerSingleton(mediaManager);
  GetIt.I.registerSingleton(themeManager);
  GetIt.I.registerSingleton(PlaybackCache());

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => themeManager),
      ChangeNotifierProvider(create: (context) => mediaManager),
      ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late HttpServer httpServer;
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    httpServer = await startServer();
  }

  @override
  void dispose() {
    super.dispose();
    httpServer.close();
  }

  @override
  Widget build(BuildContext context) {
    ThemeManager themeManager = context.watch<ThemeManager>();

    return DynamicColorBuilder(builder: (lightScheme, darkScheme) {
      return Shortcuts(
        shortcuts: <LogicalKeySet, Intent>{
          LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
        },
        child: MaterialApp.router(
          locale: Locale(themeManager.language['code']),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          theme: themeManager.isMaterialTheme && darkScheme != null
              ? materialLightTheme(darkScheme.primary)
              : themeManager.getLightTheme,
          darkTheme: themeManager.isMaterialTheme && lightScheme != null
              ? materialDarkTheme(lightScheme.primary)
              : themeManager.getDarkTheme,
          themeMode: themeManager.themeMode,
          routerConfig: router,
          debugShowCheckedModeBanner: false,
        ),
      );
    });
  }
}

Future<Box<E>> openBox<E>(String name) async {
  return await Hive.openBox(name, path: Platform.isAndroid ? null : 'Kepu');
}

