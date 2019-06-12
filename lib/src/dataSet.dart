library data_set;

import 'dart:convert' as json;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_built_value/src/serializers.dart';

part 'dataSet.g.dart';

abstract class DataSet implements Built<DataSet, DataSetBuilder> {
  static Serializer<DataSet> get serializer => _$dataSetSerializer;

  DataSet._();

  factory DataSet([updates(DataSetBuilder b)]) = _$DataSet;
  @nullable
  int get count;
  @nullable
  String get next;
  @nullable
  String get previous;
  @nullable
  BuiltList<Results> get results;
}

abstract class Results implements Built<Results, ResultsBuilder> {
  Results._();
  static Serializer<Results> get serializer => _$resultsSerializer;

  factory Results([updates(ResultsBuilder b)]) = _$Results;

  @nullable
  String get name;
  @nullable
  String get height;
  @nullable
  String get mass;
  @nullable
  String get hairColor;
  @nullable
  String get skinColor;
  @nullable
  String get eyeColor;
  @nullable
  String get birthYear;
  @nullable
  String get gender;
  @nullable
  String get homeworld;
  @nullable
  BuiltList<String> get films;
  @nullable
  BuiltList<String> get species;
  @nullable
  BuiltList<String> get vehicles;
  @nullable
  BuiltList<String> get starships;
  @nullable
  String get created;
  @nullable
  String get edited;
  @nullable
  String get url;
}

Results parseData(String jsonStr) {
  final parsed = json.jsonDecode(jsonStr);
  Results dataSet =
      standardSerializers.deserializeWith(Results.serializer, parsed);

  return dataSet;
}
