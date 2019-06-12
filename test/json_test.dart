// import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:json_built_value/src/dataSet.dart';
import 'package:http/http.dart' as http;
//import 'dart:convert' as json;

void main() {
  test('Dataset.json', () {
    const jsonStr = """
    {
    "count": 87,
    "next": "https://swapi.co/api/people/?page=3",
    "previous": "https://swapi.co/api/people/?page=1",
    "results": [
        {
            "name": "Anakin Skywalker",
            "height": "188",
            "mass": "84",
            "hair_color": "blond",
            "skin_color": "fair",
            "eye_color": "blue",
            "birth_year": "41.9BBY",
            "gender": "male",
            "homeworld": "https://swapi.co/api/planets/1/",
            "films": [
                "https://swapi.co/api/films/5/",
                "https://swapi.co/api/films/4/",
                "https://swapi.co/api/films/6/"
            ],
            "species": [
                "https://swapi.co/api/species/1/"
            ],
            "vehicles": [
                "https://swapi.co/api/vehicles/44/",
                "https://swapi.co/api/vehicles/46/"
            ],
            "starships": [
                "https://swapi.co/api/starships/59/",
                "https://swapi.co/api/starships/65/",
                "https://swapi.co/api/starships/39/"
            ],
            "created": "2014-12-10T16:20:44.310000Z",
            "edited": "2014-12-20T21:17:50.327000Z",
            "url": "https://swapi.co/api/people/11/"
        }
        ]}
    """;
    expect(parseData(jsonStr), isNotNull);
  });

  test("Parsing item.json  over a Network", () async {
    // final url = "https://swapi.co/api/people/?page=1";
    final url = "https://swapi.co/api/people/1/?format=json";
    final res = await http.get(url);
    if (res.statusCode == 200) {
      expect(parseData(res.body), isNotNull);
    }

    // if (res.statusCode == 200) {
    //   final idLst = json.jsonDecode(res.body);
    //   if (idLst.isNotEmpty) {
    //     final storyUrl = "https://swapi.co/api/people/$idLst/?format=json";
    //     final storyRes = await http.get(storyUrl);
    //     if (storyRes.statusCode == 200) {
    //       expect(parseData(storyRes.body), isNotNull);
    //     }
    //   }
    // }
  });
}
// expect(parseData(res.body), isNotNull);
