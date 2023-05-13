import 'package:flutter/material.dart';
import 'package:wallet/core/constants.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ViewTransactionTextButton extends StatelessWidget {
  final String transactionUrl;

  const ViewTransactionTextButton({super.key, required this.transactionUrl});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        await launchUrlString(
            '$fuelBlockExplorerUrl/transaction/$transactionUrl');
      },
      child: Text(
        'View transaction',
        style: FLTTypography.body2SemiBold.copyWith(
          color: FLTColors.grey6D,
        ),
      ),
    );
  }
}
