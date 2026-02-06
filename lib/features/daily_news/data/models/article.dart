import 'package:news__app/features/daily_news/domain/entities/article.dart';


class ArticleModel extends ArticleEntity {
  final int? id;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
  final String? content;

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      id: json['id'],
      author: json['author'],
      title: json['title'] ?? '',
      description: json['description'],
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'],
    );
  }

  ArticleEntity toEntity({required int generatedId}) {
    return ArticleEntity(
      id: id ?? generatedId,
      author: author,
      title: title,
      description: description,
      url: url,
      urlToImage: urlToImage,
      publishedAt: DateTime.parse(publishedAt),
      content: content,
    );
  }
}
