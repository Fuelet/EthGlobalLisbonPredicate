// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountAddressAdapter extends TypeAdapter<AccountAddress> {
  @override
  final int typeId = 1;

  @override
  AccountAddress read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccountAddress(
      b256Address: fields[1] as String,
      bech32Address: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AccountAddress obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.bech32Address)
      ..writeByte(1)
      ..write(obj.b256Address);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountAddressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
