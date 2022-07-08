import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_news_bloc_app/data/data.dart';
import 'package:sports_news_bloc_app/logic/logic.dart';
import 'package:sports_news_bloc_app/presentation/presentation.dart';

class TeamScreen extends StatelessWidget {
  final StandingsTeam team;

  const TeamScreen({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(),
      body: BlocBuilder<TeamBloc, TeamState>(
        builder: (context, state) {
          if (state is TeamLoading) {
            return const LoadingContainer();
          }
          if (state is TeamLoaded) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      state.teamLogo
                          ? Image(
                              image: NetworkImage('${state.team[0].teamLogo}'),
                              height: 50,
                              width: 50,
                            )
                          : Container(),
                      const SizedBox(height: 8.0),
                      Text(
                        '${state.team[0].teamName}',
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Coach: ',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        '${state.team[0].coaches![0].coachName}',
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                  ...List.generate(
                    state.team[0].players!.length,
                    (index) => Container(
                      height: 60,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  '${state.team[0].players![index].playerName}'),
                              Text(
                                '${state.team[0].players![index].playerType}',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                          Text('${state.team[0].players![index].playerNumber}'),
                        ],
                      ),
                    ),
                  ),
                ],
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
