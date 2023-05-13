import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_create_failure.freezed.dart';

@freezed
class WalletCreateFailure with _$WalletCreateFailure {
  const factory WalletCreateFailure.unexpected() = _Unexpected;
}
