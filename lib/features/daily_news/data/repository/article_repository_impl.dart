import 'package:news__app/core/resources/data_stat.dart';
import 'package:news__app/features/daily_news/data/models/article.dart';
import 'package:news__app/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    throw UnimplementedError();
  }
}
