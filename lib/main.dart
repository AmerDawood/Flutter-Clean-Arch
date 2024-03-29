import 'package:breaking_bad/presentation/screens/episodes_screen.dart';
import 'package:breaking_bad/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'app_router.dart';

void main() {
  runApp(BreakingBadApp(
    appRouter: AppRouter(),
  ));
}

class BreakingBadApp extends StatelessWidget {
  final AppRouter appRouter;

  const BreakingBadApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      // initialRoute: 'episodes_screen',
      // routes:{
      //   'splash_screen':(context) => SplashScreen(),
      //   'episodes_screen':(context) => EpisodesScreen(),
      // }

    );
  }
}