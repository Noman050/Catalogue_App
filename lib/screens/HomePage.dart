// ignore_for_file: file_names

import "package:flutter/material.dart";
import "../widgets/drawer.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue App"),
      ),
      body: const Center(
        child: Text("Catelogue App"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
