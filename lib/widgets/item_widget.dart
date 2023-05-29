import 'package:catalogue/utils/routes.dart';
import "package:flutter/material.dart";
import "../models/catalog.dart";

class ItemWidget extends StatelessWidget {
  final Item item;

  ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context)
              .pushNamed(MyRoutes.itemRoute, arguments: item);
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$ ${item.price}",
            textScaleFactor: 1.5,
            style: const TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
