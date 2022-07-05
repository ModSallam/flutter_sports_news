import 'package:equatable/equatable.dart';
import 'package:sports_news_bloc_app/data/data.dart';

class StandingsResult extends Equatable {
  final List<StandingsTeam> total;

  const StandingsResult({
    required this.total,
  });

  factory StandingsResult.fromMap(Map<String, dynamic> map) {
    return StandingsResult(
      total: List<StandingsTeam>.from(
          map['total']?.map((x) => StandingsTeam.fromMap(x))),
    );
  }

  @override
  List<Object?> get props => [total];
}
