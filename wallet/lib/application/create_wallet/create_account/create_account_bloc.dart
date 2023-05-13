import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/domain/account/entities/account.dart';
import 'package:wallet/domain/wallet_create/i_wallet_create_repository.dart';
import 'package:wallet/domain/wallet_create/wallet_create_failure.dart';
import 'package:wallet/infrastructure/accounts/private_key_manager.dart';
import 'package:wallet/infrastructure/accounts/seed_phrase_manager.dart';

import 'package:injectable/injectable.dart';

part 'create_account_event.dart';
part 'create_account_state.dart';
part 'create_account_bloc.freezed.dart';

@injectable
class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  final PrivateKeyManager privateKeyManager;
  final SeedPhraseManager seedPhraseManager;
  final IWalletCreateRepository walletCreateRepository;

  CreateAccountBloc(
    this.walletCreateRepository,
    this.privateKeyManager,
    this.seedPhraseManager,
  ) : super(const CreateAccountState.initial()) {
    on<_CreateAccount>(_onCreateAccount);
  }

  Future<void> _onCreateAccount(
    _CreateAccount event,
    Emitter<CreateAccountState> emit,
  ) async {
    final data = await walletCreateRepository.importAccountWithMnemonic(
      event.mnemonic,
    );

    if (data.isLeft()) {
      // Failed
      emit(
        const CreateAccountState.creationFailed(
          WalletCreateFailure.unexpected(),
        ),
      );
    } else {
      // Succeed
      final accountName = () {
        int num = 1;

        while (event.existingAccounts
            .fold<bool>(false, (v, e) => v || e.name == 'Account $num')) {
          num++;
        }

        return 'Account $num';
      }.call();
      final account = data.toOption().toNullable()!..name = accountName;

      await privateKeyManager.saveWalletPrivateKey(
        privateKey: account.privateKey,
        walletAddress: account.address,
      );
      await seedPhraseManager.saveWalletSeedPhrase(
        seedPhrase: account.seedPhrase,
        walletAddress: account.address,
      );

      emit(CreateAccountState.created(account));
    }
  }
}
