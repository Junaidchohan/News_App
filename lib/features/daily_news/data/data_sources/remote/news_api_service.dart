import 'package:dio/dio.dart';
import 'package:news__app/core/constants/constant.dart';
import 'package:news__app/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newAPIBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getTopHeadlines({
    @Query('apiKey') required String apiKey,
    @Query('country') String? country,
    @Query('category') String? category,
  });
}
