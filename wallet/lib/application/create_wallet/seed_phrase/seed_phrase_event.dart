part of "seed_phrase_bloc.dart";

@freezed
class SeedPhraseEvent with _$SeedPhraseEvent {
  const factory SeedPhraseEvent.generateSeedPhrase() = _GenerateSeedPhrase;
  const factory SeedPhraseEvent.resetState() = _ResetState;
}
