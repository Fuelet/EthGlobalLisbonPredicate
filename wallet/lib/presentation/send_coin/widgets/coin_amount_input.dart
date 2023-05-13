import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/decimal_text_input_formatter.dart';
import 'package:wallet/presentation/core/widgets/no_border_input.dart';

final _decimalDigitsRegex = RegExp(r'^\d+[\,\.]?\d*');

class CoinAmountInput extends StatefulWidget {
  final bool hasError;
  final TextEditingController controller;
  final FocusNode focusNode;
  final double amount;
  final String symbol;

  const CoinAmountInput({
    super.key,
    required this.hasError,
    required this.controller,
    required this.focusNode,
    required this.amount,
    required this.symbol,
  });

  @override
  State<CoinAmountInput> createState() => _CoinAmountInputState();
}

class _CoinAmountInputState extends State<CoinAmountInput> {
  late double textWidth;

  double inputFontSize = FLTTypography.header1SemiBold.fontSize!;
  double? lineHeight;

  Color get _amountColor {
    if (widget.hasError) {
      return FLTColors.malina;
    }

    return widget.amount == 0 ? FLTColors.grey6D : FLTColors.white;
  }

  Color get _fiatColor {
    if (widget.hasError) {
      return FLTColors.malina;
    }

    return widget.amount == 0 ? FLTColors.charlestonGreen2E : FLTColors.grey6D;
  }

  @override
  void initState() {
    widget.controller.addListener(() {
      final length = widget.controller.text.length;

      if (length > 8) {
        setState(() {
          inputFontSize = FLTTypography.header1SemiBold.fontSize! -
              (6 + 0.5 * (length - 8));
          lineHeight = 1.1;
        });
      } else {
        setState(() {
          inputFontSize = FLTTypography.header1SemiBold.fontSize!;
          lineHeight = null;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 56,
              child: IntrinsicWidth(
                child: FLTNoBorderInput(
                  textAlign: TextAlign.center,
                  zeroContentPadding: true,
                  maxLength: 11,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: widget.controller,
                  focusNode: widget.focusNode,
                  style: FLTTypography.header1SemiBold.copyWith(
                    fontSize: inputFontSize,
                    color: _amountColor,
                    height: lineHeight,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(_decimalDigitsRegex),
                    DecimalTextInputFormatter(decimalRange: 8),
                  ],
                  hintText: '0',
                  hintStyle: FLTTypography.header1SemiBold.copyWith(
                    color: _amountColor,
                  ),
                ),
              ),
            ),
            Text(
              ' ${widget.symbol}',
              style: FLTTypography.header1SemiBold.copyWith(
                fontSize: inputFontSize,
                color: _amountColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
