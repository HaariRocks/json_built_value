library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:json_built_value/src/dataSet.dart';

part 'serializers.g.dart';

@SerializersFor(const [DataSet])

/// Collection of generated serializers for the built_json chat example.
Serializers serializers = _$serializers;

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
