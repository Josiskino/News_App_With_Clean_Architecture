import 'package:dio/dio.dart';
import 'package:myapp/core/constants/constants.dart';
import 'package:myapp/features/daily_news/data/models/article.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsApiBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  
 @GET('top-headlines')
 Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
  @Query("apiKey") String ? apiKey,
  @Query("country") String ? country,
  @Query("category") String ? category,
  @Query("page") int ? page,
  @Query("pageSize") int ? pageSize,
 });
}

/*
@GET("top-headlines")
Future<List<dynamic>> getNewsArticles();
*/