import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/domain/transactions/entities/transaction.dart';

part 'transaction_status_dto.g.dart';

@JsonSerializable(createToJson: false)
class TransactionStatusDto {
  final String type;
  final String time;

  const TransactionStatusDto({
    required this.type,
    required this.time,
  });

  TransactionStatus toEntity() {
    switch (type) {
      case "SubmittedStatus":
        return TransactionStatus.submitted;
      case "SuccessStatus":
        return TransactionStatus.completed;
      case "FailureStatus":
        return TransactionStatus.failed;
      case "SqueezedOutStatus":
        return TransactionStatus.squeezedOut;
      default:
        throw Exception('Unkonwn transaction status gotten');
    }
  }

  factory TransactionStatusDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatusDtoFromJson(json);
}
