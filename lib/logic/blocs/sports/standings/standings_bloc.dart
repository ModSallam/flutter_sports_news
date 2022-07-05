import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sports_news_bloc_app/data/data.dart';

part 'standings_event.dart';
part 'standings_state.dart';

class StandingsBloc extends Bloc<StandingsEvent, StandingsState> {
  final SportsRepository _sportsRepository;

  StandingsBloc({required SportsRepository sportsRepository})
      : _sportsRepository = sportsRepository,
        super(StandingsInitial()) {
    on<GetStandings>(_onGetStandings);
  }

  Future<void> _onGetStandings(
      GetStandings event, Emitter<StandingsState> emit) async {
    emit(StandingsLoading());

    final date =
        '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}';

    final List<StandingsTeam> standings =
        await _sportsRepository.getStandings();

    final List<FixtureResult> fixtures =
        await _sportsRepository.getFixtures('2022-06-1', date);

    emit(StandingsLoaded(standings: standings, fixtures: fixtures));
  }
}
