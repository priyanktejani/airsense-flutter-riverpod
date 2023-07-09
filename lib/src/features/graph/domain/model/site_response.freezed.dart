// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SiteResponse _$SiteResponseFromJson(Map<String, dynamic> json) {
  return _SiteResponse.fromJson(json);
}

/// @nodoc
mixin _$SiteResponse {
  List<Site> get results => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteResponseCopyWith<SiteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteResponseCopyWith<$Res> {
  factory $SiteResponseCopyWith(
          SiteResponse value, $Res Function(SiteResponse) then) =
      _$SiteResponseCopyWithImpl<$Res, SiteResponse>;
  @useResult
  $Res call({List<Site> results, String? error});
}

/// @nodoc
class _$SiteResponseCopyWithImpl<$Res, $Val extends SiteResponse>
    implements $SiteResponseCopyWith<$Res> {
  _$SiteResponseCopyWithImpl(this._value, this._then);

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
              as List<Site>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SiteResponseCopyWith<$Res>
    implements $SiteResponseCopyWith<$Res> {
  factory _$$_SiteResponseCopyWith(
          _$_SiteResponse value, $Res Function(_$_SiteResponse) then) =
      __$$_SiteResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Site> results, String? error});
}

/// @nodoc
class __$$_SiteResponseCopyWithImpl<$Res>
    extends _$SiteResponseCopyWithImpl<$Res, _$_SiteResponse>
    implements _$$_SiteResponseCopyWith<$Res> {
  __$$_SiteResponseCopyWithImpl(
      _$_SiteResponse _value, $Res Function(_$_SiteResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? error = freezed,
  }) {
    return _then(_$_SiteResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Site>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SiteResponse implements _SiteResponse {
  _$_SiteResponse({final List<Site> results = const [], this.error})
      : _results = results;

  factory _$_SiteResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SiteResponseFromJson(json);

  final List<Site> _results;
  @override
  @JsonKey()
  List<Site> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'SiteResponse(results: $results, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SiteResponse &&
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
  _$$_SiteResponseCopyWith<_$_SiteResponse> get copyWith =>
      __$$_SiteResponseCopyWithImpl<_$_SiteResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SiteResponseToJson(
      this,
    );
  }
}

abstract class _SiteResponse implements SiteResponse {
  factory _SiteResponse({final List<Site> results, final String? error}) =
      _$_SiteResponse;

  factory _SiteResponse.fromJson(Map<String, dynamic> json) =
      _$_SiteResponse.fromJson;

  @override
  List<Site> get results;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SiteResponseCopyWith<_$_SiteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
