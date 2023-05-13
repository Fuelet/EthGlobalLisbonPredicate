enum ButtonSize {
  xxxsmall,
  xsmall,
  small,
  medium,
  large;

  double get heightInPixels {
    switch (this) {
      case xxxsmall:
        return 32;
      case xsmall:
        return 36;
      case small:
        return 40;
      case medium:
        return 48;
      case large:
        return 56;
    }
  }

  double get iconSize {
    switch (this) {
      case xxxsmall:
        return 16;
      case xsmall:
        return 16;
      case small:
        return 16;
      case medium:
        return 24;
      case large:
        return 24;
    }
  }
}
