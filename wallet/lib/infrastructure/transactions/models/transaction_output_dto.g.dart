// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_output_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionOutputDto _$TransactionOutputDtoFromJson(
        Map<String, dynamic> json) =>
    TransactionOutputDto(
      typeName: json['__typename'] as String,
      toB256Address: _toAddressFromJson(json['to'] as String),
      amount: json['amount'] as String,
      assetId: json['assetId'] as String,
    );
