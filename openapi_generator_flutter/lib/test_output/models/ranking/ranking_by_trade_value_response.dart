// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_by_trade_value_response.freezed.dart';
part 'ranking_by_trade_value_response.g.dart';

@freezed
class RankingByTradeValueResponse with _$RankingByTradeValueResponse {
  const factory RankingByTradeValueResponse({
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'ExchangeDivision') required String exchangeDivision,
    @JsonKey(name: 'Ranking') required List<Map<String, dynamic>> ranking,
  }) = _RankingByTradeValueResponse;

  factory RankingByTradeValueResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByTradeValueResponseFromJson(json);
}
