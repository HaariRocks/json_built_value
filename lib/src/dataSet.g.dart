// GENERATED CODE - DO NOT MODIFY BY HAND

part of data_set;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DataSet> _$dataSetSerializer = new _$DataSetSerializer();
Serializer<Results> _$resultsSerializer = new _$ResultsSerializer();

class _$DataSetSerializer implements StructuredSerializer<DataSet> {
  @override
  final Iterable<Type> types = const [DataSet, _$DataSet];
  @override
  final String wireName = 'DataSet';

  @override
  Iterable serialize(Serializers serializers, DataSet object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    if (object.next != null) {
      result
        ..add('next')
        ..add(serializers.serialize(object.next,
            specifiedType: const FullType(String)));
    }
    if (object.previous != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(object.previous,
            specifiedType: const FullType(String)));
    }
    if (object.results != null) {
      result
        ..add('results')
        ..add(serializers.serialize(object.results,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Results)])));
    }
    return result;
  }

  @override
  DataSet deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataSetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Results)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ResultsSerializer implements StructuredSerializer<Results> {
  @override
  final Iterable<Type> types = const [Results, _$Results];
  @override
  final String wireName = 'Results';

  @override
  Iterable serialize(Serializers serializers, Results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(String)));
    }
    if (object.mass != null) {
      result
        ..add('mass')
        ..add(serializers.serialize(object.mass,
            specifiedType: const FullType(String)));
    }
    if (object.hairColor != null) {
      result
        ..add('hairColor')
        ..add(serializers.serialize(object.hairColor,
            specifiedType: const FullType(String)));
    }
    if (object.skinColor != null) {
      result
        ..add('skinColor')
        ..add(serializers.serialize(object.skinColor,
            specifiedType: const FullType(String)));
    }
    if (object.eyeColor != null) {
      result
        ..add('eyeColor')
        ..add(serializers.serialize(object.eyeColor,
            specifiedType: const FullType(String)));
    }
    if (object.birthYear != null) {
      result
        ..add('birthYear')
        ..add(serializers.serialize(object.birthYear,
            specifiedType: const FullType(String)));
    }
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(String)));
    }
    if (object.homeworld != null) {
      result
        ..add('homeworld')
        ..add(serializers.serialize(object.homeworld,
            specifiedType: const FullType(String)));
    }
    if (object.films != null) {
      result
        ..add('films')
        ..add(serializers.serialize(object.films,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.species != null) {
      result
        ..add('species')
        ..add(serializers.serialize(object.species,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.vehicles != null) {
      result
        ..add('vehicles')
        ..add(serializers.serialize(object.vehicles,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.starships != null) {
      result
        ..add('starships')
        ..add(serializers.serialize(object.starships,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.created != null) {
      result
        ..add('created')
        ..add(serializers.serialize(object.created,
            specifiedType: const FullType(String)));
    }
    if (object.edited != null) {
      result
        ..add('edited')
        ..add(serializers.serialize(object.edited,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Results deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mass':
          result.mass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hairColor':
          result.hairColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'skinColor':
          result.skinColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'eyeColor':
          result.eyeColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthYear':
          result.birthYear = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'homeworld':
          result.homeworld = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'films':
          result.films.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'species':
          result.species.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'vehicles':
          result.vehicles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'starships':
          result.starships.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'edited':
          result.edited = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataSet extends DataSet {
  @override
  final int count;
  @override
  final String next;
  @override
  final String previous;
  @override
  final BuiltList<Results> results;

  factory _$DataSet([void Function(DataSetBuilder) updates]) =>
      (new DataSetBuilder()..update(updates)).build();

  _$DataSet._({this.count, this.next, this.previous, this.results}) : super._();

  @override
  DataSet rebuild(void Function(DataSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataSetBuilder toBuilder() => new DataSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataSet &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), next.hashCode), previous.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataSet')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class DataSetBuilder implements Builder<DataSet, DataSetBuilder> {
  _$DataSet _$v;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  String _next;
  String get next => _$this._next;
  set next(String next) => _$this._next = next;

  String _previous;
  String get previous => _$this._previous;
  set previous(String previous) => _$this._previous = previous;

  ListBuilder<Results> _results;
  ListBuilder<Results> get results =>
      _$this._results ??= new ListBuilder<Results>();
  set results(ListBuilder<Results> results) => _$this._results = results;

  DataSetBuilder();

  DataSetBuilder get _$this {
    if (_$v != null) {
      _count = _$v.count;
      _next = _$v.next;
      _previous = _$v.previous;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataSet other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataSet;
  }

  @override
  void update(void Function(DataSetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataSet build() {
    _$DataSet _$result;
    try {
      _$result = _$v ??
          new _$DataSet._(
              count: count,
              next: next,
              previous: previous,
              results: _results?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataSet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Results extends Results {
  @override
  final String name;
  @override
  final String height;
  @override
  final String mass;
  @override
  final String hairColor;
  @override
  final String skinColor;
  @override
  final String eyeColor;
  @override
  final String birthYear;
  @override
  final String gender;
  @override
  final String homeworld;
  @override
  final BuiltList<String> films;
  @override
  final BuiltList<String> species;
  @override
  final BuiltList<String> vehicles;
  @override
  final BuiltList<String> starships;
  @override
  final String created;
  @override
  final String edited;
  @override
  final String url;

  factory _$Results([void Function(ResultsBuilder) updates]) =>
      (new ResultsBuilder()..update(updates)).build();

  _$Results._(
      {this.name,
      this.height,
      this.mass,
      this.hairColor,
      this.skinColor,
      this.eyeColor,
      this.birthYear,
      this.gender,
      this.homeworld,
      this.films,
      this.species,
      this.vehicles,
      this.starships,
      this.created,
      this.edited,
      this.url})
      : super._();

  @override
  Results rebuild(void Function(ResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultsBuilder toBuilder() => new ResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Results &&
        name == other.name &&
        height == other.height &&
        mass == other.mass &&
        hairColor == other.hairColor &&
        skinColor == other.skinColor &&
        eyeColor == other.eyeColor &&
        birthYear == other.birthYear &&
        gender == other.gender &&
        homeworld == other.homeworld &&
        films == other.films &&
        species == other.species &&
        vehicles == other.vehicles &&
        starships == other.starships &&
        created == other.created &&
        edited == other.edited &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    name
                                                                        .hashCode),
                                                                height
                                                                    .hashCode),
                                                            mass.hashCode),
                                                        hairColor.hashCode),
                                                    skinColor.hashCode),
                                                eyeColor.hashCode),
                                            birthYear.hashCode),
                                        gender.hashCode),
                                    homeworld.hashCode),
                                films.hashCode),
                            species.hashCode),
                        vehicles.hashCode),
                    starships.hashCode),
                created.hashCode),
            edited.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Results')
          ..add('name', name)
          ..add('height', height)
          ..add('mass', mass)
          ..add('hairColor', hairColor)
          ..add('skinColor', skinColor)
          ..add('eyeColor', eyeColor)
          ..add('birthYear', birthYear)
          ..add('gender', gender)
          ..add('homeworld', homeworld)
          ..add('films', films)
          ..add('species', species)
          ..add('vehicles', vehicles)
          ..add('starships', starships)
          ..add('created', created)
          ..add('edited', edited)
          ..add('url', url))
        .toString();
  }
}

class ResultsBuilder implements Builder<Results, ResultsBuilder> {
  _$Results _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _height;
  String get height => _$this._height;
  set height(String height) => _$this._height = height;

  String _mass;
  String get mass => _$this._mass;
  set mass(String mass) => _$this._mass = mass;

  String _hairColor;
  String get hairColor => _$this._hairColor;
  set hairColor(String hairColor) => _$this._hairColor = hairColor;

  String _skinColor;
  String get skinColor => _$this._skinColor;
  set skinColor(String skinColor) => _$this._skinColor = skinColor;

  String _eyeColor;
  String get eyeColor => _$this._eyeColor;
  set eyeColor(String eyeColor) => _$this._eyeColor = eyeColor;

  String _birthYear;
  String get birthYear => _$this._birthYear;
  set birthYear(String birthYear) => _$this._birthYear = birthYear;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _homeworld;
  String get homeworld => _$this._homeworld;
  set homeworld(String homeworld) => _$this._homeworld = homeworld;

  ListBuilder<String> _films;
  ListBuilder<String> get films => _$this._films ??= new ListBuilder<String>();
  set films(ListBuilder<String> films) => _$this._films = films;

  ListBuilder<String> _species;
  ListBuilder<String> get species =>
      _$this._species ??= new ListBuilder<String>();
  set species(ListBuilder<String> species) => _$this._species = species;

  ListBuilder<String> _vehicles;
  ListBuilder<String> get vehicles =>
      _$this._vehicles ??= new ListBuilder<String>();
  set vehicles(ListBuilder<String> vehicles) => _$this._vehicles = vehicles;

  ListBuilder<String> _starships;
  ListBuilder<String> get starships =>
      _$this._starships ??= new ListBuilder<String>();
  set starships(ListBuilder<String> starships) => _$this._starships = starships;

  String _created;
  String get created => _$this._created;
  set created(String created) => _$this._created = created;

  String _edited;
  String get edited => _$this._edited;
  set edited(String edited) => _$this._edited = edited;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ResultsBuilder();

  ResultsBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _height = _$v.height;
      _mass = _$v.mass;
      _hairColor = _$v.hairColor;
      _skinColor = _$v.skinColor;
      _eyeColor = _$v.eyeColor;
      _birthYear = _$v.birthYear;
      _gender = _$v.gender;
      _homeworld = _$v.homeworld;
      _films = _$v.films?.toBuilder();
      _species = _$v.species?.toBuilder();
      _vehicles = _$v.vehicles?.toBuilder();
      _starships = _$v.starships?.toBuilder();
      _created = _$v.created;
      _edited = _$v.edited;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Results other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Results;
  }

  @override
  void update(void Function(ResultsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Results build() {
    _$Results _$result;
    try {
      _$result = _$v ??
          new _$Results._(
              name: name,
              height: height,
              mass: mass,
              hairColor: hairColor,
              skinColor: skinColor,
              eyeColor: eyeColor,
              birthYear: birthYear,
              gender: gender,
              homeworld: homeworld,
              films: _films?.build(),
              species: _species?.build(),
              vehicles: _vehicles?.build(),
              starships: _starships?.build(),
              created: created,
              edited: edited,
              url: url);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'films';
        _films?.build();
        _$failedField = 'species';
        _species?.build();
        _$failedField = 'vehicles';
        _vehicles?.build();
        _$failedField = 'starships';
        _starships?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Results', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
