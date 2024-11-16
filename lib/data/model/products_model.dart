class ProductsModel {
    List<Product> products;
    int count;

    ProductsModel({
        required this.products,
        required this.count,
    });

    factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "count": count,
    };
}

class Product {
    String id;
    Category category;
    String name;
    String description;
    int price;
    String imageUrl;

    Product({
        required this.id,
        required this.category,
        required this.name,
        required this.description,
        required this.price,
        required this.imageUrl,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        category: Category.fromJson(json["category"]),
        name: json["name"],
        description: json["description"],
        price: json["price"],
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "category": category.toJson(),
        "name": name,
        "description": description,
        "price": price,
        "image_url": imageUrl,
    };
}

class Category {
    String id;
    String name;
    String imageUrl;

    Category({
        required this.id,
        required this.name,
        required this.imageUrl,
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
