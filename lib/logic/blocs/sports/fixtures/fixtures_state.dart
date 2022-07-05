part of 'fixtures_bloc.dart';

abstract class FixturesState extends Equatable {
  const FixturesState();

  @override
  List<Object> get props => [];
}

class FixturesInitial extends FixturesState {}

class FixturesLoading extends FixturesState {}

class FixturesLoaded extends FixturesState {
  final List<FixtureResult> fixtures;

  const FixturesLoaded({
    required this.fixtures,
  });

  @override
  List<Object> get props => [fixtures];
}
