import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'config/app_color.dart';
import 'config/font.dart';
import 'config/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FlutterNinjas Tokyo',
      theme: AppTheme.data,
      routeInformationProvider: Routes.instance.router.routeInformationProvider,
      routerDelegate: Routes.instance.router.routerDelegate,
      routeInformationParser: Routes.instance.router.routeInformationParser,
    );
  }
}

class AppTheme {
  AppTheme._();
  static final data = ThemeData(
    fontFamily: Font.genEiLateMin,
    fontFamilyFallback: const [Font.notoColorEmoji],
    primaryColor: Colors.white,
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: AppColor.primaryBlue,
          secondary: AppColor.primaryYellowColor,
        ),
    scaffoldBackgroundColor: AppColor.backgroundNavy,
    cardTheme: const CardThemeData(
      margin: EdgeInsets.zero,
    ),
    appBarTheme: const AppBarTheme(
      titleSpacing: 0,
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColor.primaryBlue,
      ),
      titleTextStyle: TextStyle(
        color: AppColor.primaryBlue,
        fontFamily: Font.genEiLateMin,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppColor.primaryBlue,
        padding: const EdgeInsets.all(16),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColor.primaryBlue,
        side: const BorderSide(
          color: AppColor.primaryBlue,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.primaryBlue,
    ),
    tooltipTheme: const TooltipThemeData(
      padding: EdgeInsets.all(8),
    ),
    textTheme: ThemeData().textTheme.copyWith(
          displayLarge: const TextStyle(
            fontFamily: Font.genEiLateMin,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: const TextStyle(
            fontFamily: Font.genEiLateMin,
            color: AppColor.primaryBlue,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: const TextStyle(
            fontFamily: Font.genEiLateMin,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: const TextStyle(
            fontFamily: Font.genEiLateMin,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: const TextStyle(
            fontFamily: Font.genEiLateMin,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: const TextStyle(
            fontFamily: Font.genEiLateMin,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          titleMedium: const TextStyle(
            fontFamily: Font.genEiLateMin,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: const TextStyle(fontFamily: Font.genEiLateMin),
          bodyMedium: const TextStyle(fontFamily: Font.genEiLateMin),
          bodySmall: const TextStyle(fontFamily: Font.genEiLateMin),
          labelLarge: const TextStyle(
            fontFamily: Font.genEiLateMin,
            fontWeight: FontWeight.bold,
          ),
        ),
  );
}
