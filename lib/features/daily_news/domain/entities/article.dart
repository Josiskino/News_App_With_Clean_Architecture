
import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final int? id;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticleEntity({
    this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
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

/*
class ArticleListEntity extends Equatable {
  final List<ArticleEntity>? articles;

  ArticleListEntity({this.articles});

  @override
  List<Object?> get props => [articles];
}

class ArticleDetailEntity extends Equatable {
  final ArticleEntity? article;

  ArticleDetailEntity({this.article});

  @override
  List<Object?> get props => [article];
}
*/