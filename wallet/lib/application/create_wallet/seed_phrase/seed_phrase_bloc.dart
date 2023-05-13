import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/domain/wallet_create/i_wallet_create_repository.dart';
import 'package:injectable/injectable.dart';

part 'seed_phrase_state.dart';
part 'seed_phrase_event.dart';
part 'seed_phrase_bloc.freezed.dart';

@Injectable()
class SeedPhraseBloc extends Bloc<SeedPhraseEvent, SeedPhraseState> {
  final IWalletCreateRepository walletCreateRepository;

  SeedPhraseBloc(this.walletCreateRepository)
      : super(const SeedPhraseState.initial()) {
    on<_GenerateSeedPhrase>(_onGenerateSeedPhrase);
    on<_ResetState>(_onResetState);
  }

  Future<void> _onGenerateSeedPhrase(
    _GenerateSeedPhrase event,
    Emitter<SeedPhraseState> emit,
  ) async {
    emit(const SeedPhraseState.inProcess());

    final wallet = await walletCreateRepository.createAccount();
    final mnemonic = wallet.seedPhrase!.split(' ');

    emit(SeedPhraseState.generated(mnemonic));
  }

  void _onResetState(
    _ResetState event,
    Emitter<SeedPhraseState> emit,
  ) async {
    emit(const SeedPhraseState.initial());
  }
}
