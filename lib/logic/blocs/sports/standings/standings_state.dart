part of 'standings_bloc.dart';

class StandingsState extends Equatable {
  const StandingsState();

  @override
  List<Object> get props => [];
}

class StandingsInitial extends StandingsState {}

class StandingsLoading extends StandingsState {}

class StandingsLoaded extends StandingsState {
  final List<StandingsTeam> standings;
  final List<FixtureResult> fixtures;

  const StandingsLoaded({
    required this.fixtures,
    required this.standings,
  });

  @override
  List<Object> get props => [standings, fixtures];
}
