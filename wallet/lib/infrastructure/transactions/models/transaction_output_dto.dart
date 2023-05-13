import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_output_dto.g.dart';

@JsonSerializable(createToJson: false)
class TransactionOutputDto {
  @JsonKey(name: '__typename')
  final String typeName;
  @JsonKey(name: 'to', fromJson: _toAddressFromJson)
  final String toB256Address; // address in b256 format
  final String amount;
  final String assetId;

  const TransactionOutputDto({
    required this.typeName,
    required this.toB256Address,
    required this.amount,
    required this.assetId,
  });

  factory TransactionOutputDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionOutputDtoFromJson(json);
}

String _toAddressFromJson(String address) => address.substring(2);
