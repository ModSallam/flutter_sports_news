part of 'standings_bloc.dart';

abstract class StandingsEvent extends Equatable {
  const StandingsEvent();

  @override
  List<Object> get props => [];
}

class GetStandings extends StandingsEvent {}
