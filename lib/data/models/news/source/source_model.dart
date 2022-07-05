import 'package:equatable/equatable.dart';

class SourceModel extends Equatable {
  final String? id;
  final String name;

  const SourceModel({
    this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    result.addAll({'name': name});

    return result;
  }

  factory SourceModel.fromMap(Map<String, dynamic> map) {
    return SourceModel(
      id: map['id'],
      name: map['name'] ?? '',
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
