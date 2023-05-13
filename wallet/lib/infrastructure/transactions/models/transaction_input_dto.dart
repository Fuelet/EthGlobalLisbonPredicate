import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_input_dto.g.dart';

@JsonSerializable(createToJson: false)
class TransactionInputDto {
  @JsonKey(name: '__typename')
  final String typeName;
  @JsonKey(name: 'owner', fromJson: _ownerFromJson)
  final String ownerB256Address; // address in b256 format
  final String amount;
  final String assetId;

  const TransactionInputDto({
    required this.typeName,
    required this.ownerB256Address,
    required this.amount,
    required this.assetId,
  });

  factory TransactionInputDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionInputDtoFromJson(json);
}

String _ownerFromJson(String address) => address.substring(2);
