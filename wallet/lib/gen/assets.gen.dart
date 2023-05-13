/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add.svg
  String get add => 'assets/icons/add.svg';

  $AssetsIconsArrowsGen get arrows => const $AssetsIconsArrowsGen();

  /// File path: assets/icons/check.svg
  String get check => 'assets/icons/check.svg';

  /// File path: assets/icons/close.svg
  String get close => 'assets/icons/close.svg';

  /// File path: assets/icons/convert.svg
  String get convert => 'assets/icons/convert.svg';

  /// File path: assets/icons/copy.svg
  String get copy => 'assets/icons/copy.svg';

  /// File path: assets/icons/done.svg
  String get done => 'assets/icons/done.svg';

  /// File path: assets/icons/ethereum_dark.svg
  String get ethereumDark => 'assets/icons/ethereum_dark.svg';

  /// File path: assets/icons/eye.svg
  String get eye => 'assets/icons/eye.svg';

  /// File path: assets/icons/fuel_dark.svg
  String get fuelDark => 'assets/icons/fuel_dark.svg';

  /// File path: assets/icons/import.svg
  String get import => 'assets/icons/import.svg';

  /// File path: assets/icons/info.svg
  String get info => 'assets/icons/info.svg';

  /// File path: assets/icons/more.svg
  String get more => 'assets/icons/more.svg';

  /// File path: assets/icons/plus.svg
  String get plus => 'assets/icons/plus.svg';

  /// File path: assets/icons/scan.svg
  String get scan => 'assets/icons/scan.svg';

  /// File path: assets/icons/share.svg
  String get share => 'assets/icons/share.svg';

  /// List of all assets
  List<String> get values => [
        add,
        check,
        close,
        convert,
        copy,
        done,
        ethereumDark,
        eye,
        fuelDark,
        import,
        info,
        more,
        plus,
        scan,
        share
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/eth_qr.png
  AssetGenImage get ethQr => const AssetGenImage('assets/images/eth_qr.png');

  /// List of all assets
  List<AssetGenImage> get values => [ethQr];
}

class $AssetsIconsArrowsGen {
  const $AssetsIconsArrowsGen();

  /// File path: assets/icons/arrows/arrow_down.svg
  String get arrowDown => 'assets/icons/arrows/arrow_down.svg';

  /// File path: assets/icons/arrows/arrow_up.svg
  String get arrowUp => 'assets/icons/arrows/arrow_up.svg';

  /// File path: assets/icons/arrows/ios_arrow_back.svg
  String get iosArrowBack => 'assets/icons/arrows/ios_arrow_back.svg';

  /// File path: assets/icons/arrows/ios_arrow_forward.svg
  String get iosArrowForward => 'assets/icons/arrows/ios_arrow_forward.svg';

  /// File path: assets/icons/arrows/open_link_arrow.svg
  String get openLinkArrow => 'assets/icons/arrows/open_link_arrow.svg';

  /// File path: assets/icons/arrows/triangle_arrow_down.svg
  String get triangleArrowDown => 'assets/icons/arrows/triangle_arrow_down.svg';

  /// List of all assets
  List<String> get values => [
        arrowDown,
        arrowUp,
        iosArrowBack,
        iosArrowForward,
        openLinkArrow,
        triangleArrowDown
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
