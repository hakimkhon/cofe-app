class CategoryModel {
    List<Category>? categories;
    int? count;

    CategoryModel({
        this.categories,
        this.count,
    });

    factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
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

}
