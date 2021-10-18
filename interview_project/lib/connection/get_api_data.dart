import 'package:interview_project/model/api_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//
//
//
//
String apiSource = "https://jsonplaceholder.typicode.com/todos?_limit=5";

Future<List<Info>> getAPIData() async {
  final apiLink = await http.get(Uri.parse(apiSource));
  if (apiLink.statusCode == 200) {
    List jsonResult = json.decode(apiLink.body);
    return jsonResult.map((data) => Info.fromJson(data)).toList();
  } else {
    throw Exception("Unexpected Error");
  }
}
