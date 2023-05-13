import 'package:equatable/equatable.dart';
import 'package:wallet/domain/account/entities/address.dart';
import 'package:hive/hive.dart';

part 'account.g.dart';

@HiveType(typeId: 0)
class Account with EquatableMixin {
  @HiveField(0)
  final AccountAddress fuelAddress;

  @HiveField(1)
  late final String name;

  /// As hive orders the box items only with keys, we store [createdAt] [DateTime] value to sort them by ourselves
  @HiveField(2)
  final DateTime createdAt;

  // We don't store privateKey in hive, but separately in secure storage
  late final String privateKey;

  // We don't store seedPhrase in hive, but separately in secure storage
  late final String? seedPhrase;

  String get address => fuelAddress.bech32Address;

  Account({
    required this.fuelAddress,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [address, name, createdAt];

  Account copyWith({
    String? name,
  }) {
    final account = Account(
      fuelAddress: fuelAddress,
      createdAt: createdAt,
    );

    /// [privateKey] and [seedPhrase] never will be changed!
    account.privateKey = privateKey;
    account.seedPhrase = seedPhrase;

    account.name = name ?? this.name;

    return account;
  }
}
