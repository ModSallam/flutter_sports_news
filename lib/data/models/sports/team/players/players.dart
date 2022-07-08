import 'package:equatable/equatable.dart';

class Players extends Equatable {
  final int? playerKey;
  final String? playerName;
  final String? playerNumber;
  final String? playerType;
  final String? playerAge;
  final String? playerMatchPlayed;
  final String? playerGoals;
  final String? playerYellowCards;
  final String? playerRedCards;
  final String? playerImage;
  final bool hasImage;

  const Players({
    required this.playerKey,
    required this.playerName,
    required this.playerNumber,
    required this.playerType,
    required this.playerAge,
    required this.playerMatchPlayed,
    required this.playerGoals,
    required this.playerYellowCards,
    required this.playerRedCards,
    required this.playerImage,
    this.hasImage = false,
  });

  Players copyWith({
    int? playerKey,
    String? playerName,
    String? playerNumber,
    String? playerType,
    String? playerAge,
    String? playerMatchPlayed,
    String? playerGoals,
    String? playerYellowCards,
    String? playerRedCards,
    String? playerImage,
    bool? hasImage,
  }) {
    return Players(
      playerKey: playerKey ?? this.playerKey,
      playerName: playerName ?? this.playerName,
      playerNumber: playerNumber ?? this.playerNumber,
      playerType: playerType ?? this.playerType,
      playerAge: playerAge ?? this.playerAge,
      playerMatchPlayed: playerMatchPlayed ?? this.playerMatchPlayed,
      playerGoals: playerGoals ?? this.playerGoals,
      playerYellowCards: playerYellowCards ?? this.playerYellowCards,
      playerRedCards: playerRedCards ?? this.playerRedCards,
      playerImage: playerImage ?? this.playerImage,
      hasImage: hasImage ?? this.hasImage,
    );
  }

  factory Players.fromMap(Map<String, dynamic> map) {
    return Players(
      playerKey: map['player_key']?.toInt(),
      playerName: map['player_name'],
      playerNumber: map['player_number'],
      playerType: map['player_type'],
      playerAge: map['player_age'],
      playerMatchPlayed: map['player_match_played'],
      playerGoals: map['player_goals'],
      playerYellowCards: map['player_yellow_cards'],
      playerRedCards: map['player_red_cards'],
      playerImage: map['player_image'],
    );
  }

  @override
  List<Object?> get props => [
        playerKey,
        playerName,
        playerNumber,
        playerType,
        playerAge,
        playerMatchPlayed,
        playerGoals,
        playerYellowCards,
        playerRedCards,
        playerImage,
      ];
}
