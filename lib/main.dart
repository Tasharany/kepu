import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kepu/Services/auth.dart';
import 'package:kepu/routes.dart';
import 'package:kepu/view/splash/splash_screen.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:get/get.dart'; // for todolist
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'kepu',
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const App());

}

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => _AppState();
}
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,

      ),
    );
  }
  Widget build1(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          useMaterial3: true,
        ),
        home: const SplashView()
    );
  }
}



