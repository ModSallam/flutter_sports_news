import 'package:flutter/material.dart';
import 'package:sports_news_bloc_app/data/data.dart';
import 'package:sports_news_bloc_app/logic/logic.dart';
import 'package:sports_news_bloc_app/presentation/presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final NewsRepository newsRepository = NewsRepository();
  runApp(MyApp(newsRepository: newsRepository));
}

class MyApp extends StatelessWidget {
  final NewsRepository newsRepository;
  const MyApp({
    Key? key,
    required this.newsRepository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => NewsRepository(),
      child: BlocProvider(
        create: (context) =>
            NewsBloc(newsRepository: newsRepository)..add(GetNews()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fire Sports News',
          theme: ThemeData(
            primarySwatch: Colors.amber,
            fontFamily: 'futura',
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.black,
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
