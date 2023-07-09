import 'package:freezed_annotation/freezed_annotation.dart';

part 'site.freezed.dart';
part 'site.g.dart';

@freezed
class Site with _$Site {
  const factory Site({
    @JsonKey(name: 'SiteCode') required String siteCode,
    @JsonKey(name: 'SiteName') required String siteName,
  }) = _GraphNode;

  factory Site.fromJson(Map<String, dynamic> json) =>
      _$SiteFromJson(json);
}