import 'package:equatable/equatable.dart';

class Coaches extends Equatable {
  final String? coachName;

  const Coaches({required this.coachName});

  factory Coaches.fromMap(Map<String, dynamic> map) {
    return Coaches(
      coachName: map['coach_name'],
    );
  }

  @override
  List<Object?> get props => [coachName];
}
