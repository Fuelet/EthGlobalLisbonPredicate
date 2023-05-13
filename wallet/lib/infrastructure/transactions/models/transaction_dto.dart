import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/core/constants.dart';
import 'package:wallet/core/fuel_wallet_address_convertor.dart';
import 'package:wallet/core/utils/persistent_storage_utils/date_time_utils.dart';
import 'package:wallet/core/utils/persistent_storage_utils/transaction_utils.dart';
import 'package:wallet/domain/transactions/entities/token.dart';
import 'package:wallet/domain/transactions/entities/transaction.dart';
import 'package:wallet/infrastructure/transactions/models/receipt_dto.dart';
import 'package:wallet/infrastructure/transactions/models/transaction_input_dto.dart';
import 'package:wallet/infrastructure/transactions/models/transaction_output_dto.dart';
import 'package:wallet/infrastructure/transactions/models/transaction_status_dto.dart';

part 'transaction_dto.g.dart';

@JsonSerializable(createToJson: false)
class TransactionDto {
  final String id;
  final String gasPrice;
  final String gasLimit;
  final bool isScript;
  final bool isCreate;
  final bool isMint;
  final String script;
  final TransactionStatusDto status;
  final List<TransactionReceiptDto> receipts;
  final List<TransactionInputDto> inputs;
  final List<TransactionOutputDto> outputs;

  const TransactionDto({
    required this.id,
    required this.gasPrice,
    required this.gasLimit,
    required this.isScript,
    required this.isCreate,
    required this.isMint,
    required this.script,
    required this.status,
    required this.receipts,
    required this.inputs,
    required this.outputs,
  });

  Future<FuelTransaction> toEntity(
    String b256Address, {
    required WalletAddressConvertor b256ToBech32Convertor,
    required TokenData tokenData,
  }) async {
    final gasUsed = receipts
        .firstWhere(
          (element) => element.receiptType == 'SCRIPT_RESULT',
        )
        .gasUsed!;

    final transactionType =
        _transactionType(b256Address, decimal: tokenData.decimal);

    double? balanceChange;
    String? fromBech32Address;
    String? toBech32Address;

    final networkFee = TransactionUtils.calculateTransactionFee(
          int.parse(gasPrice),
          int.parse(gasUsed),
          gasPriceFactor,
        ) /
        tokenData.decimal;

    if (transactionType.isTransfer) {
      balanceChange = _balanceChange(
        b256Address,
        tokenData.decimal,
        networkFee,
      );
      fromBech32Address = await b256ToBech32Convertor(_senderAddress);
      toBech32Address = await b256ToBech32Convertor(_receiverAddress);
    }

    return FuelTransaction(
      id: id,
      networkFee: networkFee,
      tokenData: tokenData,
      type: transactionType,
      status: status.toEntity(),
      balanceChange: balanceChange,
      dateTime: DateTimeUtils.fromTAI64(BigInt.parse(status.time)),
      from: fromBech32Address,
      to: toBech32Address,
    );
  }

  // This function should be only called when transaction type is transfer(sent || received)
  double _balanceChange(String address, int decimal, [double? networkFee]) {
    // Total amount inputed by sender

    address = address.substring(2);

    final moneyInputed = inputs.fold(
      0,
      (prevValue, input) => prevValue + int.parse(input.amount),
    );

    // Amount delivered to receiver
    final coinOutputTotal = outputs.fold(
      0,
      (previousValue, output) => output.typeName == 'CoinOutput'
          ? previousValue + int.parse(output.amount)
          : previousValue,
    );

    // Amount which came back to sender's account
    final changeOutputTotal = outputs.fold(
      0,
      (previousValue, output) => output.typeName == 'ChangeOutput'
          ? previousValue + int.parse(output.amount)
          : previousValue,
    );

    if (address == inputs.first.ownerB256Address) {
      // The user is sender
      final senderBalanceChange = changeOutputTotal - moneyInputed;

      return (senderBalanceChange / decimal) + (networkFee ?? 0);
    } else {
      // User is receiver
      return coinOutputTotal / decimal;
    }
  }

  TransactionType _transactionType(String address, {int? decimal}) {
    if (isMint) {
      return TransactionType.blockRewards;
    } else if (isCreate) {
      return TransactionType.createdContract;
    } else {
      // It's script
      if (script == "0x24040000" || script == '0x24000000' || script == "0x") {
        // Transfer, send or received
        final balanceChange = _balanceChange(address, decimal!);

        if (balanceChange < 0) {
          return TransactionType.coinSent;
        } else {
          return TransactionType.coinReceived;
        }
      } else {
        // Other script
        return TransactionType.otherScript;
      }
    }
  }

  String get _senderAddress => inputs.first.ownerB256Address;

  String get _receiverAddress => outputs
      .firstWhere(
        (element) => element.typeName == 'CoinOutput',
      )
      .toB256Address;

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);
}
