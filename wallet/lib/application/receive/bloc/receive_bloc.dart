import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fuelet_contracts/flutter_fuelet_contracts.dart';
import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/domain/blockchain_network/blockchain_network.dart';
import 'package:wallet/infrastructure/core/wallet_unlocked_manager.dart';
import 'package:injectable/injectable.dart';

part 'receive_event.dart';
part 'receive_state.dart';
part 'receive_bloc.freezed.dart';

@injectable
class ReceiveBloc extends Bloc<ReceiveEvent, ReceiveState> {
  final _dio = Dio();
  final WalletUnlockedHelper _walletUnlockedHelper;

  ReceiveBloc(this._walletUnlockedHelper)
      : super(const ReceiveState.initial()) {
    on<_Receive>(_onReceive);
  }

  Future<String> _generatePredicateBytecode(String secret) async {
    final wallet = await FuelWallet.newFromPrivateKey(
      networkUrl: BlockchainNetwork.testnet.host,
      privateKey: secret,
    );
    final publicKey = wallet.b256Address;
    final response = await _dio.get(
      'http://predicatebuilderloabbalancer-12220313.us-east-1.elb.amazonaws.com:8080/predicate_bytes?public_key=$publicKey',
    );

    var bytecode = response.data as String;
    bytecode = bytecode.replaceAll('"', '');

    return bytecode;
  }

  Future<void> _onReceive(
    _Receive event,
    Emitter<ReceiveState> emit,
  ) async {
    emit(const ReceiveState.inProcess());
    String predicateBytecode = await _generatePredicateBytecode(event.secret);
    SendCoinsPredicate predicate = SendCoinsPredicate(
        BlockchainNetwork.testnet.host, predicateBytecode);
    final fractionalAmount = (event.amount * 1000000000).toInt() - 10;
    final currentWallet = await _walletUnlockedHelper.getSelectedWalletUnlocked();
    String txId = await predicate.transferTo(currentWallet.bech32Address, fractionalAmount, event.secret);
    await Future.delayed(const Duration(seconds: 1));

    emit(ReceiveState.successfullyReceived('0x$txId'));
  }
}
