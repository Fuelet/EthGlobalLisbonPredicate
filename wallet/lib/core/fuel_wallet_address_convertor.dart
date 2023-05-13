import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:injectable/injectable.dart';

typedef WalletAddressConvertor = Future<String> Function(String);

@injectable
class FuelWalletAddressConvertor {
  Future<String> bech32StringFromB256String(String b256Address) async {
    final bech32Address = await FuelUtils.bech32FromB256String(b256Address);

    return bech32Address;
  }

  Future<String> b256StringFromBech32String(String bech32Address) async {
    final b256Address = await FuelUtils.b256FromBech32String(bech32Address);

    return b256Address;
  }
}
