import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Item Screen",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text("", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
