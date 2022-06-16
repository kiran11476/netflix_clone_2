import 'dart:convert';

import '../model/all_datamodel.dart';
import '../model/datamodel.dart/datamodel.dart';

import 'package:http/http.dart' as http;

abstract class ApiCalls {
  Future getAllMovies();
}

class MovieDb extends ApiCalls {
  Future<List<DataModel>> getAllMovies() async {
    final result = await http.get(Uri.parse(
        "https://api.themoviedb.org/3/trending/all/day?api_key=f88b478026037712e036ac5db7fe2109"));
    Map<String, dynamic> map = json.decode(result.body);
    final data = AllDataModel.fromJson(map);
    return data.results;
  }
}
