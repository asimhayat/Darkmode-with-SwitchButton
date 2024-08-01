import 'package:flutter/material.dart';
import 'home_view.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black54),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white54),
  ),
);

void main() {
  runApp(const DarkThemeApp());
}

class DarkThemeApp extends StatefulWidget {
  const DarkThemeApp({super.key});

  @override
  _DarkThemeAppState createState() => _DarkThemeAppState();
}

class _DarkThemeAppState extends State<DarkThemeApp> {
  bool isDarkMode = false;

  void toggleTheme(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HomeView(
        isDarkMode: isDarkMode,
        onToggleTheme: toggleTheme,
      ),
    );
  }
}
