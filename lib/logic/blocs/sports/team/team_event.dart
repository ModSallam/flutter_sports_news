part of 'team_bloc.dart';

abstract class TeamEvent extends Equatable {
  const TeamEvent();

  @override
  List<Object> get props => [];
}

class GetTeamData extends TeamEvent {
  final String teamId;

  const GetTeamData({
    required this.teamId,
  });

  @override
  List<Object> get props => [teamId];
}
