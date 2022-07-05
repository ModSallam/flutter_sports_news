import 'package:flutter/material.dart';
import 'package:sports_news_bloc_app/data/data.dart';
import 'package:sports_news_bloc_app/logic/logic.dart';
import 'package:sports_news_bloc_app/presentation/presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final NewsRepository newsRepository = NewsRepository();
  final SportsRepository sportsRepository = SportsRepository();
  runApp(MyApp(
    newsRepository: newsRepository,
    sportsRepository: sportsRepository,
  ));
}

class MyApp extends StatelessWidget {
  final NewsRepository newsRepository;
  final SportsRepository sportsRepository;

  const MyApp({
    Key? key,
    required this.newsRepository,
    required this.sportsRepository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => NewsRepository(),
        ),
        RepositoryProvider(
          create: (context) => SportsRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                NewsBloc(newsRepository: newsRepository)..add(GetNews()),
          ),
          BlocProvider(
            create: (context) =>
                StandingsBloc(sportsRepository: sportsRepository)
                  ..add(GetStandings()),
          ),
        ],
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
