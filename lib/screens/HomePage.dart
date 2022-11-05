// ignore: file_names
import "dart:convert";

import "package:flutter/material.dart";
import 'package:flutter/services.dart';

import "../models/catalog.dart";
import "../widgets/drawer.dart";
import "../widgets/item_widget.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("lib/assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalogue App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            ((CatalogModel.items != null) && (CatalogModel.items!.isNotEmpty))
                ? ListView.builder(
                    itemCount: CatalogModel.items!.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(item: CatalogModel.items![index]);
                    },
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
