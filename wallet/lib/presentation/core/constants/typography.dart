import 'package:flutter/rendering.dart';

abstract class FLTTypography {
  const FLTTypography._();

  // Font Families
  static const fontFamilySFUIDisplay = '.SF UI Display';
  static const _defaultLetterSpacing = -0.5;

  // title3
  static const title3Normal = TextStyle(
    fontSize: 36,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );

  static const title3SemiBold = TextStyle(
    fontSize: 36,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );

  // title2
  static const title2Normal = TextStyle(
    fontSize: 40,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const title2SemiBold = TextStyle(
    fontSize: 40,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );

  // header1
  static const header1Normal = TextStyle(
    fontSize: 48,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const header1SemiBold = TextStyle(
    fontSize: 48,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );

  // header2
  static const header2Normal = TextStyle(
    fontSize: 32,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const header2SemiBold = TextStyle(
    fontSize: 32,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );

  // header3
  static const header3Normal = TextStyle(
    fontSize: 27,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const header3SemiBold = TextStyle(
    fontSize: 27,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );
  // header4
  static const header4Normal = TextStyle(
    fontSize: 24,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const header4w500 = TextStyle(
    fontSize: 24,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w500,
    letterSpacing: _defaultLetterSpacing,
  );
  static const header4SemiBold = TextStyle(
    fontSize: 24,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );

  // header5
  static const header5Normal = TextStyle(
    fontSize: 21,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const header5SemiBold = TextStyle(
    fontSize: 21,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );

  // header6
  static const header6Normal = TextStyle(
    fontSize: 19,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const header6w500 = TextStyle(
    fontSize: 19,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w500,
    letterSpacing: _defaultLetterSpacing,
  );
  static const header6SemiBold = TextStyle(
    fontSize: 19,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );

  // body1
  static const body1Normal = TextStyle(
    fontSize: 17,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const body1w500 = TextStyle(
    fontSize: 17,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w500,
    letterSpacing: _defaultLetterSpacing,
  );
  static const body1SemiBold = TextStyle(
    fontSize: 17,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );

  // body2
  static const body2Normal = TextStyle(
    fontSize: 15,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const body2Medium = TextStyle(
    fontSize: 15,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w500,
    letterSpacing: _defaultLetterSpacing,
  );
  static const body2SemiBold = TextStyle(
    fontSize: 15,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  ); // body3
  static const body3Normal = TextStyle(
    fontSize: 13,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const body3Medium = TextStyle(
    fontSize: 13,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w500,
    letterSpacing: _defaultLetterSpacing,
  );
  static const body3SemiBold = TextStyle(
    fontSize: 13,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );

  // body4
  static const body4Normal = TextStyle(
    fontSize: 12,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
  static const body4SemiBold = TextStyle(
    fontSize: 12,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: _defaultLetterSpacing,
  );

  // body5
  static const body5Normal = TextStyle(
    fontSize: 11,
    fontFamily: fontFamilySFUIDisplay,
    fontWeight: FontWeight.w400,
    letterSpacing: _defaultLetterSpacing,
  );
}
