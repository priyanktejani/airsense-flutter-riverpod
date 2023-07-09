import 'package:airsense/src/features/graph/domain/model/site.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_response.freezed.dart';
part 'site_response.g.dart';

@freezed
class SiteResponse with _$SiteResponse {
  factory SiteResponse({
    @Default([]) List<Site> results,
    String? error,
  }) = _SiteResponse;

  factory SiteResponse.fromJsonMapOrList(dynamic json) {
    if (json is List<dynamic>) {
      return SiteResponse.fromJson({'results': json[0]});
    } else if (json is Map<String, dynamic>) {
      return SiteResponse.fromJson(json);
    } else {
      throw ArgumentError('Invalid JSON structure for SiteResponse');
    }
  }

  factory SiteResponse.fromJson(Map<String, dynamic> json) =>
      _$SiteResponseFromJson(json);
}

extension SiteResponseX on SiteResponse {
  //@late
  bool get isEmpty => !hasResults();

  bool hasResults() {
    return results.isNotEmpty;
  }

  bool hasErrors() {
    return error != null;
  }
}