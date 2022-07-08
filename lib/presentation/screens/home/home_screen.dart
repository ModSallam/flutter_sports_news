import 'package:flutter/material.dart';
import 'package:sports_news_bloc_app/presentation/presentation.dart';
import 'package:sports_news_bloc_app/presentation/screens/fixtures/fixtures_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Fire Sports News'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ImageCard(
              title: 'News',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewsScreen(),
                ),
              ),
            ),
            ImageCard(
              title: 'Standings',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StandingsScreen(),
                ),
              ),
            ),
            ImageCard(
              title: 'Fixtures',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FixturesScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
