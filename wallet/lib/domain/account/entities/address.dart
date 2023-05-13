import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'address.g.dart';

@HiveType(typeId: 1)
class AccountAddress with EquatableMixin {
  @HiveField(0)
  final String bech32Address;
  @HiveField(1)
  final String b256Address;

  const AccountAddress({
    required this.b256Address,
    required this.bech32Address,
  });

  @override
  List<Object?> get props => [bech32Address, b256Address];
}
