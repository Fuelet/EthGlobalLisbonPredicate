import 'package:dartz/dartz.dart';
import 'package:wallet/domain/account/entities/account.dart';
import 'package:wallet/domain/wallet_import/wallet_import_failure.dart';

typedef WalletImportResponse = Either<WalletImportFailure, Account>;
