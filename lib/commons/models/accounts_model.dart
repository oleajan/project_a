import 'package:decimal/decimal.dart';

enum AccountType {
  asset,
  liability,
}

class Accounts {
  final int id;
  final AccountType accountType;
  final String accountName;
  final DateTime openingDate;
  final Decimal amount;
  final String? note;

  Accounts(
    this.id,
    this.accountType,
    this.accountName,
    this.openingDate,
    this.amount,
    this.note,
  );
}
