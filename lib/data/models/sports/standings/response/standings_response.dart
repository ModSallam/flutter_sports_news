import 'package:equatable/equatable.dart';
import 'package:sports_news_bloc_app/data/data.dart';

class StandingsResponse extends Equatable {
  final int success;
  final StandingsResult result;

  const StandingsResponse({
    required this.success,
    required this.result,
  });

  factory StandingsResponse.fromMap(Map<String, dynamic> map) {
    return StandingsResponse(
      success: map['success']?.toInt() ?? 0,
      result: StandingsResult.fromMap(map['result']),
    );
  }

  @override
  List<Object?> get props => [
        success,
        result,
      ];
}
