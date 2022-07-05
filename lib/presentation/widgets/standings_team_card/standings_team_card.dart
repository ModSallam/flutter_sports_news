import 'package:flutter/material.dart';
import 'package:sports_news_bloc_app/data/data.dart';

class StandingsTeamCard extends StatelessWidget {
  final StandingsTeam team;
  final bool appBar;

  const StandingsTeamCard({
    Key? key,
    required this.team,
    this.appBar = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20),
      decoration: BoxDecoration(
        color: appBar ? Colors.grey.withOpacity(0.2) : Colors.transparent,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Text(team.standingPlace),
                const SizedBox(width: 16.0),
                Text(team.standingTeam),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(team.standingP),
                appBar
                    ? const Text('Goal')
                    : Text('${team.standingF}:${team.standingA}'),
                Text(team.standingGD),
                Text(team.standingPTS),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
