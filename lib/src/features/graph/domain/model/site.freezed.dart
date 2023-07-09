// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Site _$SiteFromJson(Map<String, dynamic> json) {
  return _GraphNode.fromJson(json);
}

/// @nodoc
mixin _$Site {
  @JsonKey(name: 'SiteCode')
  String get siteCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'SiteName')
  String get siteName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteCopyWith<Site> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteCopyWith<$Res> {
  factory $SiteCopyWith(Site value, $Res Function(Site) then) =
      _$SiteCopyWithImpl<$Res, Site>;
  @useResult
  $Res call(
      {@JsonKey(name: 'SiteCode') String siteCode,
      @JsonKey(name: 'SiteName') String siteName});
}

/// @nodoc
class _$SiteCopyWithImpl<$Res, $Val extends Site>
    implements $SiteCopyWith<$Res> {
  _$SiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteCode = null,
    Object? siteName = null,
  }) {
    return _then(_value.copyWith(
      siteCode: null == siteCode
          ? _value.siteCode
          : siteCode // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphNodeCopyWith<$Res> implements $SiteCopyWith<$Res> {
  factory _$$_GraphNodeCopyWith(
          _$_GraphNode value, $Res Function(_$_GraphNode) then) =
      __$$_GraphNodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'SiteCode') String siteCode,
      @JsonKey(name: 'SiteName') String siteName});
}

/// @nodoc
class __$$_GraphNodeCopyWithImpl<$Res>
    extends _$SiteCopyWithImpl<$Res, _$_GraphNode>
    implements _$$_GraphNodeCopyWith<$Res> {
  __$$_GraphNodeCopyWithImpl(
      _$_GraphNode _value, $Res Function(_$_GraphNode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteCode = null,
    Object? siteName = null,
  }) {
    return _then(_$_GraphNode(
      siteCode: null == siteCode
          ? _value.siteCode
          : siteCode // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphNode implements _GraphNode {
  const _$_GraphNode(
      {@JsonKey(name: 'SiteCode') required this.siteCode,
      @JsonKey(name: 'SiteName') required this.siteName});

  factory _$_GraphNode.fromJson(Map<String, dynamic> json) =>
      _$$_GraphNodeFromJson(json);

  @override
  @JsonKey(name: 'SiteCode')
  final String siteCode;
  @override
  @JsonKey(name: 'SiteName')
  final String siteName;

  @override
  String toString() {
    return 'Site(siteCode: $siteCode, siteName: $siteName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphNode &&
            (identical(other.siteCode, siteCode) ||
                other.siteCode == siteCode) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, siteCode, siteName);

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

abstract class _GraphNode implements Site {
  const factory _GraphNode(
          {@JsonKey(name: 'SiteCode') required final String siteCode,
          @JsonKey(name: 'SiteName') required final String siteName}) =
      _$_GraphNode;

  factory _GraphNode.fromJson(Map<String, dynamic> json) =
      _$_GraphNode.fromJson;

  @override
  @JsonKey(name: 'SiteCode')
  String get siteCode;
  @override
  @JsonKey(name: 'SiteName')
  String get siteName;
  @override
  @JsonKey(ignore: true)
  _$$_GraphNodeCopyWith<_$_GraphNode> get copyWith =>
      throw _privateConstructorUsedError;
}
