import 'package:flutter/material.dart';
import 'package:wallet/core/utils/persistent_storage_utils/hive_initializer.dart';
import 'package:wallet/di/injectable.dart';
import 'package:wallet/presentation/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  await HiveInitializer().initialize();

  runApp(FuelWalletApp());
}
