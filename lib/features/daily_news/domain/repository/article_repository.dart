import 'package:myapp/core/resources/data_state.dart';
import 'package:myapp/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}



