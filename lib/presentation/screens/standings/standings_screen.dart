import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_news_bloc_app/logic/logic.dart';
import 'package:sports_news_bloc_app/presentation/presentation.dart';

class StandingsScreen extends StatelessWidget {
  const StandingsScreen({Key? key}) : super(key: key);

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
            'Standings',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: BlocBuilder<StandingsBloc, StandingsState>(
        builder: (context, state) {
          if (state is StandingsLoading) {
            return const LoadingContainer();
          }
          if (state is StandingsLoaded) {
            return StandingsContainer(standings: state.standings);
          } else {
            return const ErrorContainer();
          }
        },
      ),
    );
  }
}
