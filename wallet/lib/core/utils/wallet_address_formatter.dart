class WalletAddressFormatter {
  const WalletAddressFormatter._();

  static String titleFromAddress(
    String address, {
    int padLeft = 6,
    int padRight = 4,
  }) {
    if (address.length < padLeft || address == '0x') {
      return '';
    }

    final length = address.length;

    final beginning = address.substring(0, padLeft);
    final ending = address.substring(length - padRight);

    return '$beginning...$ending';
  }
}
