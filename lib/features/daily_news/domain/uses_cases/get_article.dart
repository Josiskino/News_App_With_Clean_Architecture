import 'package:myapp/core/resources/data_state.dart';
import 'package:myapp/core/uses_case/use_case.dart';
import 'package:myapp/features/daily_news/domain/entities/article.dart';
import '../repository/article_repository.dart';

class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
  
}  
