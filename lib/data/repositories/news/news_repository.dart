import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sports_news_bloc_app/data/data.dart';

class NewsRepository {
  final String baseUrl = 'https://newsapi.org/v2';
  final String apiKey = 'da459aa5684f45088d628b130a6e75b7';

  Future<List<ArticleModel>> getNews() async {
    final url = Uri.parse(
        '$baseUrl/top-headlines?country=eg&category=sports&apiKey=$apiKey');

    final response = await http.get(url);

    final json = jsonDecode(response.body);

    final NewsResponse data = NewsResponse.fromMap(json);

    final List<ArticleModel> news = data.articles;

    List<ArticleModel> filteredNews = [];

    for (var element in news) {
      if (element.source!.name == "Youm7.com" ||
          element.source!.name == "Yallakora.com" ||
          element.source!.name == "Elwatannews.com") {
      } else {
        filteredNews.add(element);
      }
    }

    return filteredNews;
  }
}
