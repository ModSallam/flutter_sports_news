part of 'team_bloc.dart';

abstract class TeamState extends Equatable {
  const TeamState();

  @override
  List<Object> get props => [];
}

class TeamInitial extends TeamState {}

class TeamLoading extends TeamState {}

class TeamLoaded extends TeamState {
  final List<TeamResult> team;
  final bool teamLogo;

  const TeamLoaded({
    required this.team,
    required this.teamLogo,
  });

  @override
  List<Object> get props => [team, teamLogo];
}
