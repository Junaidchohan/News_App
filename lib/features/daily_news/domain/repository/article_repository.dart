import 'package:news__app/core/resources/data_stat.dart';
import 'package:news__app/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
