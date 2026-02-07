import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final int id;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;

  const ArticleEntity({
    required this.id,
    this.author,
    required this.title,
    this.description,
    required this.url,
    this.urlToImage,
    required this.publishedAt,
    this.content,
  });

  @override
  List<Object?> get props => [
    id,
    author,
    title,
    description,
    url,
    urlToImage,
    publishedAt,
    content,
  ];
}
