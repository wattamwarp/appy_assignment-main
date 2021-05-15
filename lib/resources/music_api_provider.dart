import 'dart:convert';

import 'package:http/http.dart' show Client;

import '../models/music_detail_model.dart';
import '../models/music_detail_track_model.dart';
import '../models/music_model.dart';

class MusicApiProvider {
  Client client = Client();
  final _apiKey = 'e5ba8973284efa94febb74f3cb2529d9';
  final _baseUrl = 'https://api.musixmatch.com/ws/1.1';

  Future<MusicModel> fetchMusicList() async {
    print("url is "+'$_baseUrl/chart.tracks.get?apikey=$_apiKey');
    Uri url = Uri.parse('$_baseUrl/chart.tracks.get?apikey=$_apiKey');
    var response =
        await client.get(url
        );
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return MusicModel.fromJson(json.decode(response.body));



    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load List');
    }
  }

  Future<MusicDetailModel> fetchMusicDetail(String trackingId) async {
    print("url is "+'$_baseUrl/track.lyrics.get?track_id=$trackingId&apikey=$_apiKey');
    Uri url =Uri.parse('$_baseUrl/track.lyrics.get?track_id=$trackingId&apikey=$_apiKey');
    var response = await client
        .get(url);
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      print(response.body.toString());
      return MusicDetailModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load List');
    }
  }

  Future<MusicDetailTrackModel> fetchMusicTrackDetail(String trackingId) async {
    print("url is "+'$_baseUrl/track.get?track_id=$trackingId&apikey=$_apiKey');
    Uri url=Uri.parse('$_baseUrl/track.get?track_id=$trackingId&apikey=$_apiKey');
    var response = await client
        .get(url);
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      print(response.body.toString());
      return MusicDetailTrackModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load List');
    }
  }
}
