import 'package:catalogue/screens/userProfileScreen.dart';
import "package:flutter/material.dart";
import 'screens/HomePage.dart';
import 'utils/routes.dart';
import "./widgets/themes.dart";
import "./screens/login_screen.dart";
import "./screens/signup_screen.dart";
import './screens/item_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => const LoginScreen(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginScreen(),
        MyRoutes.sinupRoute: (context) => const SignupPage(),
        MyRoutes.itemRoute: (context) => const ItemScreen(),
        MyRoutes.profileRoute: (context) => const ProfilePage(),
      },
    );
  }
}
