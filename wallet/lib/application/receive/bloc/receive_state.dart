part of 'receive_bloc.dart';

@freezed
class ReceiveState with _$ReceiveState {
  const factory ReceiveState.initial() = _Initial;
  const factory ReceiveState.inProcess() = _InProcess;
  const factory ReceiveState.successfullyReceived(String transactionUrl) =
      _SuccessfullyReceived;
  const factory ReceiveState.failed() = _Failed;
}
