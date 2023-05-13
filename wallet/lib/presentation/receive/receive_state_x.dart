import 'package:wallet/application/receive/bloc/receive_bloc.dart';
import 'package:wallet/presentation/receive/widgets/processing_transaction_status.dart';

/// TODO: Maybe will be moved to the [application] layer
extension SendCoinStateX on ReceiveState {
  TransactionStatus toTransactionStatus() => map(
        initial: (_) => TransactionStatus.summary,
        inProcess: (_) => TransactionStatus.inProgress,
        successfullyReceived: (_) => TransactionStatus.succeed,
        failed: (_) => TransactionStatus.failed,
      );
}
