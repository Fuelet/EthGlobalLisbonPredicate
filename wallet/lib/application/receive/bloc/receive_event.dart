part of 'receive_bloc.dart';

@freezed
class ReceiveEvent with _$ReceiveEvent {
  const factory ReceiveEvent.receive({
    required double amount,
    required String secret,
  }) = _Receive;
}
