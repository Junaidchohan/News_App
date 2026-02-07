import 'package:news__app/features/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    required super.id,
    super.author,
    required super.title,
    super.description,
    required super.url,
    super.urlToImage,
    required super.publishedAt,
    super.content,
  });

  factory ArticleModel.fromJson(
    Map<String, dynamic> json, {
    required int generatedId,
  }) {
    return ArticleModel(
      id: json['id'] ?? generatedId,
      author: json['author'],
      title: json['title'] ?? '',
      description: json['description'],
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content'],
    );
  }
}
