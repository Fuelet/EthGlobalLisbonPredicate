part of 'seed_phrase_bloc.dart';

@freezed
class SeedPhraseState with _$SeedPhraseState {
  const factory SeedPhraseState.initial() = _Initial;
  const factory SeedPhraseState.inProcess() = _InProcess;
  const factory SeedPhraseState.generated(List<String> phrase) = Generated;
}
