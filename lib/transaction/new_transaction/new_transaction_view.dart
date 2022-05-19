import 'package:flutter/material.dart';
import 'package:project_a/transaction/new_transaction/new_transaction_model.dart';

class NewTransactionView extends StatefulWidget {
  const NewTransactionView({Key? key}) : super(key: key);

  @override
  State<NewTransactionView> createState() => _NewTransactionViewState();
}

class _NewTransactionViewState extends State<NewTransactionView> {
  late final NewTransactionModel newTransaction;

  late final TextEditingController _id;
  late final TextEditingController _name;
  late final TextEditingController _date;
  late final TextEditingController _amount;
  late final TextEditingController _transactionType;
  late final TextEditingController _accountTo;
  late final TextEditingController _accountFrom;
  late final TextEditingController? _note;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _id = TextEditingController();
    _name = TextEditingController();
    _date = TextEditingController();
    _amount = TextEditingController();
    _transactionType = TextEditingController();
    _accountTo = TextEditingController();
    _accountFrom = TextEditingController();
    _note = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _id.dispose();
    _name.dispose();
    _date.dispose();
    _amount.dispose();
    _transactionType.dispose();
    _accountTo.dispose();
    _accountFrom.dispose();
    _note?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Transaction'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // name
              SizedBox(
                width: sizeboxSize,
                child: TextField(
                  autofocus: true,
                  controller: _name,
                  decoration: const InputDecoration(
                    // icon: Icon(Icons.person),
                    prefixIcon: Icon(Icons.person),
                    iconColor: Color.fromARGB(255, 54, 49, 49),
                    hintText: 'Payee or Item Name',
                    border: InputBorder.none,
                  ),
                ),
              ),

              // amount
              SizedBox(
                width: sizeboxSize,
                child: TextField(
                  controller: _amount,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.remove),
                    border: InputBorder.none,
                    hintText: 'Amount',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

const double sizeboxSize = 410;
