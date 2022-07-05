import 'package:equatable/equatable.dart';

import 'package:sports_news_bloc_app/data/data.dart';

class FixturesResponse extends Equatable {
  final int success;
  final List<FixtureResult> result;

  const FixturesResponse({
    required this.success,
    required this.result,
  });

  @override
  List<Object> get props => [success, result];

  factory FixturesResponse.fromMap(Map<String, dynamic> map) {
    return FixturesResponse(
      success: map['success']?.toInt() ?? 0,
      result: List<FixtureResult>.from(
          map['result']?.map((x) => FixtureResult.fromMap(x))),
    );
  }
}
