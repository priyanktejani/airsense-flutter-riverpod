// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_node_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GraphNodeResponse _$GraphNodeResponseFromJson(Map<String, dynamic> json) {
  return _GraphNodeResponse.fromJson(json);
}

/// @nodoc
mixin _$GraphNodeResponse {
  List<GraphNode> get results => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphNodeResponseCopyWith<GraphNodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphNodeResponseCopyWith<$Res> {
  factory $GraphNodeResponseCopyWith(
          GraphNodeResponse value, $Res Function(GraphNodeResponse) then) =
      _$GraphNodeResponseCopyWithImpl<$Res, GraphNodeResponse>;
  @useResult
  $Res call({List<GraphNode> results, String? error});
}

/// @nodoc
class _$GraphNodeResponseCopyWithImpl<$Res, $Val extends GraphNodeResponse>
    implements $GraphNodeResponseCopyWith<$Res> {
  _$GraphNodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GraphNode>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphNodeResponseCopyWith<$Res>
    implements $GraphNodeResponseCopyWith<$Res> {
  factory _$$_GraphNodeResponseCopyWith(_$_GraphNodeResponse value,
          $Res Function(_$_GraphNodeResponse) then) =
      __$$_GraphNodeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GraphNode> results, String? error});
}

/// @nodoc
class __$$_GraphNodeResponseCopyWithImpl<$Res>
    extends _$GraphNodeResponseCopyWithImpl<$Res, _$_GraphNodeResponse>
    implements _$$_GraphNodeResponseCopyWith<$Res> {
  __$$_GraphNodeResponseCopyWithImpl(
      _$_GraphNodeResponse _value, $Res Function(_$_GraphNodeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? error = freezed,
  }) {
    return _then(_$_GraphNodeResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GraphNode>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphNodeResponse implements _GraphNodeResponse {
  _$_GraphNodeResponse({final List<GraphNode> results = const [], this.error})
      : _results = results;

  factory _$_GraphNodeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GraphNodeResponseFromJson(json);

  final List<GraphNode> _results;
  @override
  @JsonKey()
  List<GraphNode> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'GraphNodeResponse(results: $results, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphNodeResponse &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphNodeResponseCopyWith<_$_GraphNodeResponse> get copyWith =>
      __$$_GraphNodeResponseCopyWithImpl<_$_GraphNodeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphNodeResponseToJson(
      this,
    );
  }
}

abstract class _GraphNodeResponse implements GraphNodeResponse {
  factory _GraphNodeResponse(
      {final List<GraphNode> results,
      final String? error}) = _$_GraphNodeResponse;

  factory _GraphNodeResponse.fromJson(Map<String, dynamic> json) =
      _$_GraphNodeResponse.fromJson;

  @override
  List<GraphNode> get results;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_GraphNodeResponseCopyWith<_$_GraphNodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
