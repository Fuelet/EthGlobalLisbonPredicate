import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FLTNoBorderInput extends StatelessWidget {
  final String? hintText;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextAlign textAlign;
  final double? cursorHeight;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final Border? border;
  final BorderRadius? borderRadius;
  final Widget? icon;
  final EdgeInsets? additionalContentPadding;
  final BoxConstraints? sufficIconConstraints;
  final int? maxLines;
  final int? maxLength;
  final TextInputType keyboardType;
  final Color? color;
  final bool zeroContentPadding;
  final TextInputAction? textInputAction;
  final TextAlignVertical? textAlignVertical;
  final void Function(String)? onSubmitted;

  const FLTNoBorderInput({
    super.key,
    this.hintText,
    this.style,
    this.hintStyle,
    this.textAlign = TextAlign.start,
    this.cursorHeight,
    this.controller,
    this.suffixIcon,
    this.inputFormatters,
    this.focusNode,
    this.border,
    this.borderRadius,
    this.icon,
    this.additionalContentPadding,
    this.sufficIconConstraints,
    this.maxLines = 1,
    this.maxLength,
    this.keyboardType = TextInputType.multiline,
    this.color,
    this.zeroContentPadding = false,
    this.textInputAction,
    this.textAlignVertical,
    this.onSubmitted,
  });

  final _inputBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent,
      width: 0.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: border,
        borderRadius: borderRadius,
        color: color,
      ),
      child: TextField(
        textAlignVertical: textAlignVertical,
        onSubmitted: onSubmitted,
        textInputAction: textInputAction,
        controller: controller,
        cursorColor: Colors.white,
        cursorHeight: cursorHeight,
        style: style,
        textAlign: textAlign,
        keyboardType: keyboardType,
        focusNode: focusNode,
        maxLines: maxLines,
        maxLength: maxLength,
        decoration: InputDecoration(
          contentPadding: zeroContentPadding
              ? EdgeInsets.zero
              : EdgeInsets.fromLTRB(
                  12 + (additionalContentPadding?.left ?? 0),
                  20 + (additionalContentPadding?.top ?? 0),
                  12 + (additionalContentPadding?.right ?? 0),
                  20 + (additionalContentPadding?.bottom ?? 0),
                ),
          border: _inputBorder,
          enabledBorder: _inputBorder,
          focusedBorder: _inputBorder,
          disabledBorder: _inputBorder,
          errorBorder: _inputBorder,
          focusedErrorBorder: _inputBorder,
          isCollapsed: true,
          hintText: hintText,
          hintStyle: hintStyle,
          counterText: "",
          suffixIcon: suffixIcon,
          icon: icon,
          suffixIconConstraints: sufficIconConstraints,
        ),
        inputFormatters: inputFormatters,
        keyboardAppearance: Brightness.dark,
      ),
    );
  }
}
