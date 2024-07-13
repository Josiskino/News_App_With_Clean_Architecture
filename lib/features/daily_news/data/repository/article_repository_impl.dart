import 'package:dio/dio.dart';
import 'package:myapp/core/constants/constants.dart';
import 'package:myapp/core/resources/data_state.dart';
import 'package:myapp/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:myapp/features/daily_news/data/models/article.dart';
import 'package:myapp/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
   try {
    final httpResponse = await _newsApiService.getNewsArticles(
    apiKey: newsApiKey,
    country: countryQuery,
    category: categoryQuery,
    page: pageQuery,
    pageSize: pageSizeQuery,
   );

   if (httpResponse.response.statusCode == 200) {
    return DataSuccess(httpResponse.data);
   } else {
    return DataFailed(
      DioException(
        error: httpResponse.response.statusMessage,
        type: DioExceptionType.badResponse,
        response: httpResponse.response,
        requestOptions: httpResponse.response.requestOptions,

      )
    );
   }
   } on DioException catch (e) {
    return DataFailed(e);
   }
  }
  }
  
