import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/infrastructure/core/wallet_unlocked_manager.dart';
import 'package:injectable/injectable.dart';

part 'receive_event.dart';
part 'receive_state.dart';
part 'receive_bloc.freezed.dart';

@injectable
class ReceiveBloc extends Bloc<ReceiveEvent, ReceiveState> {
  final WalletUnlockedHelper _walletUnlockedHelper;

  ReceiveBloc(this._walletUnlockedHelper)
      : super(const ReceiveState.initial()) {
    on<_Receive>(_onReceive);
  }

  Future<void> _onReceive(
    _Receive event,
    Emitter<ReceiveState> emit,
  ) async {
    emit(const ReceiveState.inProcess());

    // TODO: implement receiving
    await Future.delayed(const Duration(seconds: 2));

    emit(const ReceiveState.successfullyReceived('Test Ts Url'));
  }
}
