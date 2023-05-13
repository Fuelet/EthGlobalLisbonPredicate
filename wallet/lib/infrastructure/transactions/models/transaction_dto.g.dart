// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) =>
    TransactionDto(
      id: json['id'] as String,
      gasPrice: json['gasPrice'] as String,
      gasLimit: json['gasLimit'] as String,
      isScript: json['isScript'] as bool,
      isCreate: json['isCreate'] as bool,
      isMint: json['isMint'] as bool,
      script: json['script'] as String,
      status:
          TransactionStatusDto.fromJson(json['status'] as Map<String, dynamic>),
      receipts: (json['receipts'] as List<dynamic>)
          .map((e) => TransactionReceiptDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      inputs: (json['inputs'] as List<dynamic>)
          .map((e) => TransactionInputDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      outputs: (json['outputs'] as List<dynamic>)
          .map((e) => TransactionOutputDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
