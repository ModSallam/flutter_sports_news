import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_news_bloc_app/logic/logic.dart';
import 'package:sports_news_bloc_app/presentation/presentation.dart';

class FixturesScreen extends StatelessWidget {
  const FixturesScreen({Key? key}) : super(key: key);

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
            'Fixtures',
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
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.builder(
                itemCount: state.fixtures.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 120,
                    margin: const EdgeInsets.only(bottom: 20.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height: 25,
                              width: 25,
                              image: NetworkImage(
                                state.fixtures[index].leagueLogo!,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              '${state.fixtures[index].countryName!} ${state.fixtures[index].leagueName!}',
                            ),
                          ],
                        ),
                        const Divider(color: Colors.grey),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                state.fixtures[index].eventHomeTeam!,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                state.fixtures[index].eventTime!,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                state.fixtures[index].eventAwayTeam!,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                            ),
                            // const SizedBox(width: 8.0),
                          ],
                        ),
                      ],
                    ),
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
