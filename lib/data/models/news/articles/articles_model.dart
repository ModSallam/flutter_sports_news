import 'package:equatable/equatable.dart';
import 'package:sports_news_bloc_app/data/data.dart';

class ArticleModel extends Equatable {
  final SourceModel? source;
  final String? author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String? content;

  const ArticleModel({
    this.source,
    this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    this.content,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (source != null) {
      result.addAll({'source': source!.toMap()});
    }
    if (author != null) {
      result.addAll({'author': author});
    }
    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'url': url});
    result.addAll({'urlToImage': urlToImage});
    result.addAll({'publishedAt': publishedAt});
    if (content != null) {
      result.addAll({'content': content});
    }

    return result;
  }

  factory ArticleModel.fromMap(Map<String, dynamic> map) {
    return ArticleModel(
      source: map['source'] != null ? SourceModel.fromMap(map['source']) : null,
      author: map['author'],
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      url: map['url'] ?? '',
      urlToImage: map['urlToImage'] ?? '',
      publishedAt: map['publishedAt'] ?? '',
      content: map['content'],
    );
  }

  @override
  List<Object?> get props => [
        source,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
      ];
}
