import 'package:equatable/equatable.dart';
import 'package:sports_news_bloc_app/data/data.dart';

class NewsResponse extends Equatable {
  final String status;
  final int totalResults;
  final List<ArticleModel> articles;

  const NewsResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'status': status});
    result.addAll({'totalResults': totalResults});
    result.addAll({'articles': articles.map((x) => x.toMap()).toList()});

    return result;
  }

  factory NewsResponse.fromMap(Map<String, dynamic> map) {
    return NewsResponse(
      status: map['status'] ?? '',
      totalResults: map['totalResults']?.toInt() ?? 0,
      articles: List<ArticleModel>.from(
          map['articles']?.map((x) => ArticleModel.fromMap(x))),
    );
  }

  @override
  List<Object?> get props => [
        status,
        totalResults,
        articles,
      ];
}
