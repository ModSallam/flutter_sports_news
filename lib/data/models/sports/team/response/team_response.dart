import 'package:equatable/equatable.dart';
import 'package:sports_news_bloc_app/data/data.dart';

class TeamResponse extends Equatable {
  final int success;
  final List<TeamResult> result;

  const TeamResponse({required this.success, required this.result});

  factory TeamResponse.fromMap(Map<String, dynamic> map) {
    return TeamResponse(
      success: map['success']?.toInt() ?? 0,
      result: List<TeamResult>.from(
          map['result']?.map((x) => TeamResult.fromMap(x))),
    );
  }

  @override
  List<Object> get props => [success, result];
}
