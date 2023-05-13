import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/colors.dart';

enum TransactionType {
  coinSent,
  coinReceived,
  coinSwap,
  createdContract,
  blockRewards,
  otherScript,
  other;

  bool get isTransfer {
    if (this == coinSent || this == coinReceived) {
      return true;
    }

    return false;
  }
}

enum TransactionStatus {
  submitted,
  completed,
  failed,
  squeezedOut;

  Color get color {
    switch (this) {
      case TransactionStatus.failed:
        return FLTColors.malina;
      case TransactionStatus.completed:
        return FLTColors.green;
      default:
        return FLTColors.grey6D;
    }
  }

  String get displayName {
    switch (this) {
      case TransactionStatus.failed:
        return 'Failed';
      case TransactionStatus.completed:
        return 'Successul';
      case TransactionStatus.submitted:
        return 'Sending';
      case TransactionStatus.squeezedOut:
        return 'Squeezed out';
    }
  }
}
