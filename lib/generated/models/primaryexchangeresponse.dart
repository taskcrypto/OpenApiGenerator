// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'primaryexchangeresponse.freezed.dart';
part 'primaryexchangeresponse.g.dart';

@freezed
class PrimaryExchangeResponse with _$PrimaryExchangeResponse {
  const factory PrimaryExchangeResponse({
    @JsonKey(name: 'Symbol')
    String? symbol,
    @JsonKey(name: 'PrimaryExchange')
    int? primaryExchange,
  }) = _PrimaryExchangeResponse;

  factory PrimaryExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$PrimaryExchangeResponseFromJson(json);
}
