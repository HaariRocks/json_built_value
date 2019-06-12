// import 'dart:collection';

// import 'package:json_built_value/src/dataSet.dart';
// import 'package:json_built_value/src/serializers.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'dart:async';

// Future<List<Results>> getData() async {
//   const String url = "https://swapi.co/api/people/?page=1";
//   final storyRes = await http.get(Uri.parse(url));
//   DataSet dataSet = serializers.deserializeWith(
//       DataSet.serializer, json.decode(storyRes.body));
//   return dataSet.results.map((Results results) => results).toList();
// }
