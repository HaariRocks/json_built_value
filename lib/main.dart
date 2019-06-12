import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:json_built_value/src/dataSet.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> _ids = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  Future<Results> _future(int id) async {
    final url = "https://swapi.co/api/people/$id/?format=json";
    final res = await http.get(url);
    if (res.statusCode == 200) {
      return parseData(res.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: _ids
            .map((i) => FutureBuilder<Results>(
                  future: _future(i),
                  builder:
                      (BuildContext context, AsyncSnapshot<Results> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      //return Text(snapshot.data.name);
                      return _buiditem(snapshot.data);
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ))
            .toList(),
      ),
    );
  }

  Widget _buiditem(Results results) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ExpansionTile(
        title: Text(
          results.name,
          style: TextStyle(fontSize: 24.0),
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(results.gender),
              IconButton(
                icon: Icon(Icons.launch),
                onPressed: () async {
                  if (await canLaunch(results.url)) {
                    launch(results.url);
                  }
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
