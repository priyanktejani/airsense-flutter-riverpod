// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GraphNode _$GraphNodeFromJson(Map<String, dynamic> json) {
  return _GraphNode.fromJson(json);
}

/// @nodoc
mixin _$GraphNode {
  @JsonKey(name: 'SiteCode')
  String get siteCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'DateTime')
  String get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'DurationNS')
  int get durationNS => throw _privateConstructorUsedError;
  @JsonKey(name: 'ScaledValue')
  double get scaledValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphNodeCopyWith<GraphNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphNodeCopyWith<$Res> {
  factory $GraphNodeCopyWith(GraphNode value, $Res Function(GraphNode) then) =
      _$GraphNodeCopyWithImpl<$Res, GraphNode>;
  @useResult
  $Res call(
      {@JsonKey(name: 'SiteCode') String siteCode,
      @JsonKey(name: 'DateTime') String dateTime,
      @JsonKey(name: 'DurationNS') int durationNS,
      @JsonKey(name: 'ScaledValue') double scaledValue});
}

/// @nodoc
class _$GraphNodeCopyWithImpl<$Res, $Val extends GraphNode>
    implements $GraphNodeCopyWith<$Res> {
  _$GraphNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteCode = null,
    Object? dateTime = null,
    Object? durationNS = null,
    Object? scaledValue = null,
  }) {
    return _then(_value.copyWith(
      siteCode: null == siteCode
          ? _value.siteCode
          : siteCode // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      durationNS: null == durationNS
          ? _value.durationNS
          : durationNS // ignore: cast_nullable_to_non_nullable
              as int,
      scaledValue: null == scaledValue
          ? _value.scaledValue
          : scaledValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphNodeCopyWith<$Res> implements $GraphNodeCopyWith<$Res> {
  factory _$$_GraphNodeCopyWith(
          _$_GraphNode value, $Res Function(_$_GraphNode) then) =
      __$$_GraphNodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'SiteCode') String siteCode,
      @JsonKey(name: 'DateTime') String dateTime,
      @JsonKey(name: 'DurationNS') int durationNS,
      @JsonKey(name: 'ScaledValue') double scaledValue});
}

/// @nodoc
class __$$_GraphNodeCopyWithImpl<$Res>
    extends _$GraphNodeCopyWithImpl<$Res, _$_GraphNode>
    implements _$$_GraphNodeCopyWith<$Res> {
  __$$_GraphNodeCopyWithImpl(
      _$_GraphNode _value, $Res Function(_$_GraphNode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteCode = null,
    Object? dateTime = null,
    Object? durationNS = null,
    Object? scaledValue = null,
  }) {
    return _then(_$_GraphNode(
      siteCode: null == siteCode
          ? _value.siteCode
          : siteCode // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      durationNS: null == durationNS
          ? _value.durationNS
          : durationNS // ignore: cast_nullable_to_non_nullable
              as int,
      scaledValue: null == scaledValue
          ? _value.scaledValue
          : scaledValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphNode implements _GraphNode {
  const _$_GraphNode(
      {@JsonKey(name: 'SiteCode') required this.siteCode,
      @JsonKey(name: 'DateTime') required this.dateTime,
      @JsonKey(name: 'DurationNS') required this.durationNS,
      @JsonKey(name: 'ScaledValue') this.scaledValue = 0.0});

  factory _$_GraphNode.fromJson(Map<String, dynamic> json) =>
      _$$_GraphNodeFromJson(json);

  @override
  @JsonKey(name: 'SiteCode')
  final String siteCode;
  @override
  @JsonKey(name: 'DateTime')
  final String dateTime;
  @override
  @JsonKey(name: 'DurationNS')
  final int durationNS;
  @override
  @JsonKey(name: 'ScaledValue')
  final double scaledValue;

  @override
  String toString() {
    return 'GraphNode(siteCode: $siteCode, dateTime: $dateTime, durationNS: $durationNS, scaledValue: $scaledValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphNode &&
            (identical(other.siteCode, siteCode) ||
                other.siteCode == siteCode) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.durationNS, durationNS) ||
                other.durationNS == durationNS) &&
            (identical(other.scaledValue, scaledValue) ||
                other.scaledValue == scaledValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, siteCode, dateTime, durationNS, scaledValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphNodeCopyWith<_$_GraphNode> get copyWith =>
      __$$_GraphNodeCopyWithImpl<_$_GraphNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphNodeToJson(
      this,
    );
  }
}

abstract class _GraphNode implements GraphNode {
  const factory _GraphNode(
      {@JsonKey(name: 'SiteCode') required final String siteCode,
      @JsonKey(name: 'DateTime') required final String dateTime,
      @JsonKey(name: 'DurationNS') required final int durationNS,
      @JsonKey(name: 'ScaledValue') final double scaledValue}) = _$_GraphNode;

  factory _GraphNode.fromJson(Map<String, dynamic> json) =
      _$_GraphNode.fromJson;

  @override
  @JsonKey(name: 'SiteCode')
  String get siteCode;
  @override
  @JsonKey(name: 'DateTime')
  String get dateTime;
  @override
  @JsonKey(name: 'DurationNS')
  int get durationNS;
  @override
  @JsonKey(name: 'ScaledValue')
  double get scaledValue;
  @override
  @JsonKey(ignore: true)
  _$$_GraphNodeCopyWith<_$_GraphNode> get copyWith =>
      throw _privateConstructorUsedError;
}
