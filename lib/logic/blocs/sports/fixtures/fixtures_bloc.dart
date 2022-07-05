import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sports_news_bloc_app/data/data.dart';

part 'fixtures_event.dart';
part 'fixtures_state.dart';

class FixturesBloc extends Bloc<FixturesEvent, FixturesState> {
  final SportsRepository _sportsRepository;

  FixturesBloc({required SportsRepository sportsRepository})
      : _sportsRepository = sportsRepository,
        super(FixturesInitial()) {
    on<GetFixtures>(_onGetFixturesEvent);
  }

  Future<void> _onGetFixturesEvent(
      GetFixtures event, Emitter<FixturesState> emit) async {
    emit(FixturesLoading());

    final List<FixtureResult> fixtures =
        await _sportsRepository.getFixtures('2022-07-1', '2022-07-5');

    emit(FixturesLoaded(fixtures: fixtures));
  }
}
