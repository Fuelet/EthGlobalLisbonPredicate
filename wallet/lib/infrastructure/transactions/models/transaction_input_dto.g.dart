// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_input_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionInputDto _$TransactionInputDtoFromJson(Map<String, dynamic> json) =>
    TransactionInputDto(
      typeName: json['__typename'] as String,
      ownerB256Address: _ownerFromJson(json['owner'] as String),
      amount: json['amount'] as String,
      assetId: json['assetId'] as String,
    );
