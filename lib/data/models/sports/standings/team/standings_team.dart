import 'package:equatable/equatable.dart';

class StandingsTeam extends Equatable {
  final String standingPlace;
  final String standingPlaceType;
  final String standingTeam;
  final String standingP;
  final String standingW;
  final String standingD;
  final String standingL;
  final String standingF;
  final String standingA;
  final String standingGD;
  final String standingPTS;
  final String teamKey;
  final String leagueKey;
  final String leagueSeason;
  final String leagueRound;
  final String standingUpdated;
  final String fkStageKey;
  final String stageName;

  const StandingsTeam({
    required this.standingPlace,
    required this.standingPlaceType,
    required this.standingTeam,
    required this.standingP,
    required this.standingW,
    required this.standingD,
    required this.standingL,
    required this.standingF,
    required this.standingA,
    required this.standingGD,
    required this.standingPTS,
    required this.teamKey,
    required this.leagueKey,
    required this.leagueSeason,
    required this.leagueRound,
    required this.standingUpdated,
    required this.fkStageKey,
    required this.stageName,
  });

  static StandingsTeam appBar = const StandingsTeam(
    standingPlace: '#',
    standingPlaceType: '',
    standingTeam: 'Team',
    standingP: 'P',
    standingW: 'W',
    standingD: 'D',
    standingL: 'L',
    standingF: 'F',
    standingA: 'A',
    standingGD: '+/-',
    standingPTS: 'PTS',
    teamKey: 'team_key',
    leagueKey: 'league_key',
    leagueSeason: 'Season',
    leagueRound: 'league_round',
    standingUpdated: 'standing_updated',
    fkStageKey: 'fk_stage_key',
    stageName: 'stage_name',
  );

  factory StandingsTeam.fromMap(Map<String, dynamic> map) {
    return StandingsTeam(
      standingPlace: map['standing_place'] ?? '',
      standingPlaceType: map['standing_place_type'] ?? '',
      standingTeam: map['standing_team'] ?? '',
      standingP: map['standing_P'] ?? '',
      standingW: map['standing_W'] ?? '',
      standingD: map['standing_D'] ?? '',
      standingL: map['standing_L'] ?? '',
      standingF: map['standing_F'] ?? '',
      standingA: map['standing_A'] ?? '',
      standingGD: map['standing_GD'] ?? '',
      standingPTS: map['standing_PTS'] ?? '',
      teamKey: map['team_key'] ?? '',
      leagueKey: map['league_key'] ?? '',
      leagueSeason: map['league_season'] ?? '',
      leagueRound: map['league_round'] ?? '',
      standingUpdated: map['standing_updated'] ?? '',
      fkStageKey: map['fk_stage_key'] ?? '',
      stageName: map['stage_name'] ?? '',
    );
  }

  @override
  List<Object?> get props => [
        standingPlace,
        standingPlaceType,
        standingTeam,
        standingP,
        standingW,
        standingD,
        standingL,
        standingF,
        standingA,
        standingGD,
        standingPTS,
        teamKey,
        leagueKey,
        leagueSeason,
        leagueRound,
        standingUpdated,
        fkStageKey,
        stageName,
      ];
}
