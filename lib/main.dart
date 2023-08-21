import 'package:flutter/material.dart';
import 'package:tt9_betweener_challenge/prefs/prefs.dart';
import 'package:tt9_betweener_challenge/utilis/routes.dart';

import 'package:tt9_betweener_challenge/views/screens/loading_view.dart';

import 'utilis/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferencesController().initSharePrefs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Betweener',
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: AppColors.kPrimaryColor,
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.kPrimaryColor,
            ),
          ),
          scaffoldBackgroundColor: AppColors.kScaffoldColor),
      home: const LoadingView(),
      routes: AppRoutes.routes,
    );
  }
}
