// class NewsModel {
//   final String title;
//   final String subTitle;
//   final String image;
//   final String data;
//   NewsModel({
//     required this.title,
//     required this.subTitle,
//     required this.image,
//     required this.data,
//   });
// }

// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

class NewsModel {
  List<News>? news;
  int? count;

  NewsModel({
    this.news,
    this.count,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        news: List<News>.from(json["news"].map((x) => News.fromJson(x))),
        count: json["count"],
      );
}

class News {
  String? id;
  String? title;
  String? description;
  String? content;
  String? imageUrl;
  String? createdAt;

  News({
    this.id,
    this.title,
    this.description,
    this.content,
    this.imageUrl,
    this.createdAt,
  });

  factory News.fromJson(Map<String, dynamic> json) => News(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        content: json["content"],
        imageUrl: json["image_url"],
        createdAt: json["created_at"],
      );
}
