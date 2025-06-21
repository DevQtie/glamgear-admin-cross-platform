enum Category {
  // all,//Reserved only
  jewelry,
  luxuryBag,
  gadget,
  others,
  accessories,
  clothing,
  home,
}

class ListItem {
  final Category category;
  final int id;
  final List<String> productImage;
  final String name;
  final String type;
  final double price;
  bool isSelected;
  int quantity;

  ListItem({
    required this.category,
    required this.id,
    required this.productImage,
    required this.name,
    required this.type,
    required this.price,
    required this.isSelected,
    required this.quantity,
  });
}
