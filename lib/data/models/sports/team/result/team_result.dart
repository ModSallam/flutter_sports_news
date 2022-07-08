import 'package:equatable/equatable.dart';
import 'package:sports_news_bloc_app/data/data.dart';

class TeamResult extends Equatable {
  final String? teamKey;
  final String? teamName;
  final String? teamLogo;
  final List<Players>? players;
  final List<Coaches>? coaches;

  const TeamResult({
    required this.teamKey,
    required this.teamName,
    required this.teamLogo,
    required this.players,
    required this.coaches,
  });

  factory TeamResult.fromMap(Map<String, dynamic> map) {
    return TeamResult(
      teamKey: map['team_key'],
      teamName: map['team_name'],
      teamLogo: map['team_logo'],
      players: map['players'] != null
          ? List<Players>.from(map['players']?.map((x) => Players.fromMap(x)))
          : null,
      coaches: map['coaches'] != null
          ? List<Coaches>.from(map['coaches']?.map((x) => Coaches.fromMap(x)))
          : null,
    );
  }

  @override
  List<Object?> get props => [
        teamKey,
        teamName,
        teamLogo,
        players,
        coaches,
      ];
}
