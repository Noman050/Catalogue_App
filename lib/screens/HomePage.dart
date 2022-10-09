import "package:flutter/material.dart";
import 'package:catalogue/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue App"),
      ),
      body: Center(
        child: Container(
          child: const Text("Catelogue App"),
        ),
      ),
      drawer: Drawer(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(MyRoutes.loginRoute);
          },
          icon: const Icon(Icons.logout),
          label: const Text("Logout"),
        ),
      ),
    );
  }
}
