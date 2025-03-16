// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_default_response.freezed.dart';
part 'ranking_default_response.g.dart';

@freezed
class RankingDefaultResponse with _$RankingDefaultResponse {
  const factory RankingDefaultResponse({
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'ExchangeDivision') required String exchangeDivision,
    @JsonKey(name: 'Ranking') required List<Map<String, dynamic>> ranking,
  }) = _RankingDefaultResponse;

  factory RankingDefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingDefaultResponseFromJson(json);
}
