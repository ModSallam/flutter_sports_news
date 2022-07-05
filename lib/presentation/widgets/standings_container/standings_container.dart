import 'package:flutter/material.dart';
import 'package:sports_news_bloc_app/data/data.dart';
import 'package:sports_news_bloc_app/presentation/presentation.dart';

class StandingsContainer extends StatelessWidget {
  final List<StandingsTeam> standings;

  const StandingsContainer({
    Key? key,
    required this.standings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          StandingsTeamCard(
            team: StandingsTeam.appBar,
            appBar: true,
          ),
          ...List.generate(
            standings.length,
            (index) => StandingsTeamCard(team: standings[index]),
          ),
        ],
      ),
    );
  }
}
