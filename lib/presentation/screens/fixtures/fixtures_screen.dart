import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_news_bloc_app/logic/logic.dart';
import 'package:sports_news_bloc_app/presentation/presentation.dart';

class FixturesScreen extends StatelessWidget {
  const FixturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Fixtures'),
      body: BlocBuilder<StandingsBloc, StandingsState>(
        builder: (context, state) {
          if (state is StandingsLoading) {
            return const LoadingContainer();
          }
          if (state is StandingsLoaded) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.builder(
                itemCount: state.fixtures.length,
                itemBuilder: (BuildContext context, int index) {
                  return FixturesItemCard(
                    result: state.fixtures[index],
                    onTap: () {},
                  );
                },
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
