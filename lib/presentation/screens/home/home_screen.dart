import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_news_bloc_app/logic/logic.dart';
import 'package:sports_news_bloc_app/presentation/presentation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.amber,
          child: const Text(
            'Fire Sports News',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          if (state is NewsLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
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
            return const Center(
              child: Text('Oops! Something went wrong.'),
            );
          }
        },
      ),
    );
  }
}
