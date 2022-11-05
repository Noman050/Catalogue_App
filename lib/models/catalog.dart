// ignore_for_file: public_member_api_docs, sort_constructors_first
class Item {
  late final String id;
  late final String name;
  late final String desc;
  late final num price;
  late final String color;
  late final String image;
  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

final products = [
  Item(
    id: "Codepur001",
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12th generation",
    price: 999,
    color: "#33405a",
    image: "https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-pro--.jpg",
  ),
];
