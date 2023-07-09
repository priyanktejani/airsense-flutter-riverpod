// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SiteResponse _$$_SiteResponseFromJson(Map<String, dynamic> json) =>
    _$_SiteResponse(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Site.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_SiteResponseToJson(_$_SiteResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'error': instance.error,
    };
