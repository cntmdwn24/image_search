import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/photo.dart';

class PixabayApi {
  final baseUrl = 'https://pixabay.com/api/';
  final key = '50128400-fd734a0c5f16757b8d677e322';

  Future<List<Photo>> fetch(String querry) async {
    final response = await http.get(
      Uri.parse(
        '$baseUrl?key=$key&q=$querry&image_type=photo&pretty=true',
      ),
    );
    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}

