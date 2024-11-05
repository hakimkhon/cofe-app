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


class FastFoodModelNew {
    List<Category>? categories;
    int? count;

    FastFoodModelNew({
        this.categories,
        this.count,
    });

    factory FastFoodModelNew.fromJson(Map<String, dynamic> json) => FastFoodModelNew(
        categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
        count: json["count"],
    );

}

class Category {
    String? id;
    String? name;
    String? imageUrl;

    Category({
        this.id,
        this.name,
        this.imageUrl,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image_url": imageUrl,
    };
}

