import 'package:equatable/equatable.dart';

class FixtureResult extends Equatable {
  final String? eventKey;
  final String? eventDate;
  final String? eventTime;
  final String? eventHomeTeam;
  final String? homeTeamKey;
  final String? eventAwayTeam;
  final String? awayTeamKey;
  final String? eventHalftimeResult;
  final String? eventFinalResult;
  final String? eventFtResult;
  final String? eventPenaltyResult;
  final String? eventStatus;
  final String? countryName;
  final String? leagueName;
  final String? leagueKey;
  final String? leagueRound;
  final String? leagueSeason;
  final String? eventLive;
  final String? eventStadium;
  final String? eventReferee;
  final String? homeTeamLogo;
  final String? awayTeamLogo;
  final String? eventCountryKey;
  final String? leagueLogo;
  final String? countryLogo;
  final String? eventHomeFormation;
  final String? eventAwayFormation;
  final String? fkStageKey;
  final String? stageName;

  const FixtureResult({
    required this.eventKey,
    required this.eventDate,
    required this.eventTime,
    required this.eventHomeTeam,
    required this.homeTeamKey,
    required this.eventAwayTeam,
    required this.awayTeamKey,
    required this.eventHalftimeResult,
    required this.eventFinalResult,
    required this.eventFtResult,
    required this.eventPenaltyResult,
    required this.eventStatus,
    required this.countryName,
    required this.leagueName,
    required this.leagueKey,
    required this.leagueRound,
    required this.leagueSeason,
    required this.eventLive,
    required this.eventStadium,
    required this.eventReferee,
    required this.homeTeamLogo,
    required this.awayTeamLogo,
    required this.eventCountryKey,
    required this.leagueLogo,
    required this.countryLogo,
    required this.eventHomeFormation,
    required this.eventAwayFormation,
    required this.fkStageKey,
    required this.stageName,
  });

  @override
  List<Object?> get props => [
        eventKey,
        eventDate,
        eventTime,
        eventHomeTeam,
        homeTeamKey,
        eventAwayTeam,
        awayTeamKey,
        eventHalftimeResult,
        eventFinalResult,
        eventFtResult,
        eventPenaltyResult,
        eventStatus,
        countryName,
        leagueName,
        leagueKey,
        leagueRound,
        leagueSeason,
        eventLive,
        eventStadium,
        eventReferee,
        homeTeamLogo,
        awayTeamLogo,
        eventCountryKey,
        leagueLogo,
        countryLogo,
        eventHomeFormation,
        eventAwayFormation,
        fkStageKey,
        stageName,
      ];

  factory FixtureResult.fromMap(Map<String, dynamic> map) {
    return FixtureResult(
      eventKey: map['event_key'] as String,
      eventDate: map['event_date'] as String,
      eventTime: map['event_time'] as String,
      eventHomeTeam: map['event_home_team'] as String,
      homeTeamKey: map['home_team_key'] as String,
      eventAwayTeam: map['event_away_team'] as String,
      awayTeamKey: map['away_team_key'] as String,
      eventHalftimeResult: map['event_halftime_result'] as String,
      eventFinalResult: map['event_final_result'] as String,
      eventFtResult: map['event_ft_result'] as String,
      eventPenaltyResult: map['event_penalty_result'] as String,
      eventStatus: map['event_status'] as String,
      countryName: map['country_name'] as String,
      leagueName: map['league_name'] as String,
      leagueKey: map['league_key'] as String,
      leagueRound: map['league_round'] as String,
      leagueSeason: map['league_season'] as String,
      eventLive: map['event_live'] as String,
      eventStadium: map['event_stadium'] as String,
      eventReferee: map['event_referee'] as String,
      homeTeamLogo: map['home_team_logo'] as String,
      awayTeamLogo: map['away_team_logo'] as String,
      eventCountryKey: map['event_country_key'] as String,
      leagueLogo: map['league_logo'] as String,
      countryLogo: map['country_logo'] as String,
      eventHomeFormation: map['event_home_formation'] as String,
      eventAwayFormation: map['event_away_formation'] as String,
      fkStageKey: map['fk_stage_key'] as String,
      stageName: map['stage_name'] as String,
    );
  }
}
