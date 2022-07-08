import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_news_bloc_app/logic/logic.dart';
import 'package:sports_news_bloc_app/presentation/presentation.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'News'),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          if (state is NewsLoading) {
            return const LoadingContainer();
          }
          if (state is NewsLoaded) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.builder(
                itemCount: state.articles.length,
                itemBuilder: (context, index) =>
                    NewsCard(article: state.articles[index]),
              ),
            );
          } else {
            return const ErrorContainer();
          }
        },
      ),
    );
  }
}
