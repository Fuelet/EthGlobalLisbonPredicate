import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/setup_wallet/widgets/seed_phrase_column.dart';

class SeedPhraseWidget extends StatelessWidget {
  final List<String> phrase;

  const SeedPhraseWidget({super.key, required this.phrase});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FLTColors.lightBackground,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: SeedPhraseColumn(
              words: phrase.sublist(0, 6),
            ),
          ),
          Expanded(
            child: SeedPhraseColumn(
              startCountingFrom: 7,
              words: phrase.sublist(6, 12),
            ),
          )
        ],
      ),
    );
  }
}
