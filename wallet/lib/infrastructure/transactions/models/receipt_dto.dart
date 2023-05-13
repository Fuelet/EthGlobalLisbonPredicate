import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_dto.g.dart';

@JsonSerializable(createToJson: false)
class TransactionReceiptDto {
  final String receiptType;
  final String? gasUsed;

  const TransactionReceiptDto({
    required this.receiptType,
    required this.gasUsed,
  });

  factory TransactionReceiptDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionReceiptDtoFromJson(json);
}
