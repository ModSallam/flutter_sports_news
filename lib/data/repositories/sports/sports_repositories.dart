import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sports_news_bloc_app/data/data.dart';
import 'package:sports_news_bloc_app/data/models/sports/sports.dart';

class SportsRepository {
  final String baseUrl = 'https://apiv2.allsportsapi.com/football/?met=';
  final String apiKey =
      '88db37ad2d97a2153fe2405360509771dd47f3b0b172b3a260c333e25573df5e';
  final String leagueId = '141';

  Future<List<StandingsTeam>> getStandings() async {
    final url =
        Uri.parse('${baseUrl}Standings&leagueId=$leagueId&APIkey=$apiKey');

    final response = await http.get(url);

    final json = jsonDecode(response.body);

    final StandingsResponse data = StandingsResponse.fromMap(json);

    final List<StandingsTeam> standings = data.result.total;

    return standings;
  }

  Future<List<FixtureResult>> getFixtures(String from, String to) async {
    final url = Uri.parse(
        '${baseUrl}Fixtures&leagueId=$leagueId&APIkey=$apiKey&from=$from&to=$to');

    final response = await http.get(url);

    final json = jsonDecode(response.body);

    final FixturesResponse data = FixturesResponse.fromMap(json);

    final List<FixtureResult> fixtures = data.result;

    return fixtures;
  }
}
