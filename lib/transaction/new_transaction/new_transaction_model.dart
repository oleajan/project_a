import 'package:decimal/decimal.dart';
import 'package:project_a/transaction/new_transaction/new_transaction_view.dart';

enum transaction_type { income, expense, transfer }

class NewTransactionModel {
  late final int id;
  late final DateTime date;
  late final String name;
  late final Decimal amount;
  late final transaction_type transactionType;

  // ! must be an account model
  late final String accountTo;
  late final String accountFrom;

  late final String? note;

  NewTransactionModel.new({
    required this.id,
    required this.name,
    required this.date,
    required this.amount,
    required this.transactionType,
    required this.accountTo,
    required this.accountFrom,
    required this.note,
  });
}
