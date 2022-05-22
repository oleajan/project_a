import 'package:decimal/decimal.dart';

enum TransactionType { income, expense, transfer }

class NewTransactionModel {
  late final int id;
  late final String name;
  late final Decimal amount;
  late final DateTime date;
  late final TransactionType transactionType;

  // ! must be an account model
  late final String accountTo;
  late final String accountFrom;

  late final String? note;

  NewTransactionModel.new({
    required this.id,
    required this.name,
    required this.amount,
    required this.date,
    required this.transactionType,
    required this.accountTo,
    required this.accountFrom,
    required this.note,
  });
}
