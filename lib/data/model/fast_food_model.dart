class FastFoodModel {
  final String title;
  final String icon;
  final String image;
  final String price;
  final String? selected;
  final String? unSelect;

  FastFoodModel({
    required this.title,
    required this.icon,
    required this.image,
    required this.price,
    this.selected,
    this.unSelect,
  });
}
