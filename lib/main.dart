import 'package:catalogue/screens/login_screen.dart';
import "package:flutter/material.dart";
import 'screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => const LoginScreen(),
        "/home": (context) => HomePage(),
        "/login": (context) => const LoginScreen(),
      },
    );
  }
}
