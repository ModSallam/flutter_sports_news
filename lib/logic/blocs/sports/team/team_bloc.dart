import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sports_news_bloc_app/data/data.dart';

part 'team_event.dart';
part 'team_state.dart';

class TeamBloc extends Bloc<TeamEvent, TeamState> {
  final SportsRepository _sportsRepository;

  TeamBloc({required SportsRepository sportsRepository})
      : _sportsRepository = sportsRepository,
        super(TeamInitial()) {
    on<GetTeamData>(_onGetTeamData);
  }

  Future<void> _onGetTeamData(
      GetTeamData event, Emitter<TeamState> emit) async {
    emit(TeamLoading());

    final List<TeamResult> team =
        await _sportsRepository.getTeamData(event.teamId);

    final bool logo =
        await _sportsRepository.checkUrlStatus('${team[0].teamLogo}');

    // for (var player in team[0].players!) {
    //   if (player.playerImage != null) {
    //     bool hasImage =
    //         await _sportsRepository.checkUrlStatus('${player.playerImage}');
    //     if (hasImage) {
    //       player.copyWith(hasImage: hasImage);
    //     }
    //   } else {
    //     player.copyWith(hasImage: false);
    //   }
    // }

    emit(TeamLoaded(team: team, teamLogo: logo));
  }
}
