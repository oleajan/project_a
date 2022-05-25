import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:project_a/transaction/new_transaction/new_transaction_model.dart';

import 'dart:developer' as dev;

class NewTransactionView extends StatefulWidget {
  const NewTransactionView({Key? key}) : super(key: key);

  @override
  State<NewTransactionView> createState() => _NewTransactionViewState();
}

class _NewTransactionViewState extends State<NewTransactionView> {
  late final NewTransactionModel newTransaction;

  // late final TextEditingController _id;
  late final TextEditingController _name;
  late final TextEditingController _amount;
  late final TextEditingController _transactionType;
  late final TextEditingController _accountTo;
  late final TextEditingController _accountFrom;
  late final TextEditingController? _note;

  late DateTime _date;
  late DateTime _time;

  // * should be in database
  // * types (categories) of expense accounts
  // * e.g. Youtube Premium can be under Subscriptions
  // * which is of type Entertainment

  final List<String> expenseCategories = [
    'TRANSPORTATION',
    'HOUSING',
    'FOOD',
    'UTILITIES',
    'HEALTHCARE',
    'INSURANCE',
    'ENTERTAINMENT',
    'OTHERS',
  ];

  String selectedAccountTo = '';

  @override
  void initState() {
    // _id = TextEditingController();
    _name = TextEditingController();
    _amount = TextEditingController();
    _transactionType = TextEditingController();
    _accountTo = TextEditingController();
    _accountFrom = TextEditingController();
    _note = TextEditingController();

    _date = DateTime.now();
    _time = DateTime.now();

    selectedAccountTo = expenseCategories[0];

    super.initState();
  }

  @override
  void dispose() {
    // _id.dispose();
    _name.dispose();
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
      floatingActionButton: SizedBox(
        height: 45,
        width: 85,
        child: FloatingActionButton(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          onPressed: press,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.save),
              Text('Save'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // * NAME
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: sizeboxSize,
                      child: TextField(
                        autofocus: true,
                        controller: _name,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Payee or Item Name',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    // * ICON
                    Ink(
                      width: 42,
                      height: 42,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        color: Colors.lightBlue,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.camera,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // todo camera icon
                        },
                      ),
                    ),
                  ],
                ),

                // * AMOUNT
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 240,
                        child: TextField(
                          controller: _amount,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            icon: Ink(
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0)),
                                color: Colors.red,
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: '0.00',
                            hintStyle: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                            ),
                            // hint
                          ),
                        ),
                      ),
                      // * ICONS
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Ink(
                              width: 42,
                              height: 42,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                color: Colors.lightBlue,
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.calculate,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // TODO calculator
                                  // alert dialog calculator
                                },
                              ),
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.lightBlue),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                                fixedSize: MaterialStateProperty.all(
                                    const Size(42, 42))),
                            onPressed: () {
                              // TODO currency changer
                            },
                            child: const Text(
                              'PHP',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // * DATETIME
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    children: [
                      // DATE
                      SizedBox(
                        width: 130,
                        child: DateTimeFormField(
                          initialValue: _date,
                          mode: DateTimeFieldPickerMode.date,
                          onDateSelected: (DateTime value) {
                            // TODO on date selected
                            _date =
                                DateTime(value.year, value.month, value.day);
                          },
                          decoration: const InputDecoration(
                            icon: Icon(Icons.calendar_month),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      // TIME
                      SizedBox(
                        width: 120,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: DateTimeFormField(
                              initialValue: _time,
                              mode: DateTimeFieldPickerMode.time,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.alarm),
                                border: InputBorder.none,
                              ),
                              onDateSelected: (DateTime time) {
                                _time = time;
                              },
                            )),
                      ),
                    ],
                  ),
                ),

                // * ACCOUNT TO
                SizedBox(
                  height: 50,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      children:[
                        const Icon(
                          Icons.receipt_long,
                          color: Colors.grey,
                          ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: DropdownButton(
                            items: expenseCategories.map((category) {
                              return DropdownMenuItem(
                                value: category,
                                child: Text(category),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedAccountTo = newValue!;
                              });
                              dev.log('selected: ${newValue.toString()}');
                            },
                            value: selectedAccountTo,
                            // isExpanded: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // * NOTE / Description
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: TextFormField(
                        controller: _note,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: const InputDecoration(
                          labelText: 'Note / Description',
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void press() {
    DateTime selectedDate = DateTime(
      _date.year,
      _date.day,
      _date.month,
      _time.hour,
      _time.minute,
    );

    newTransaction = NewTransactionModel(
      name: _name.text,
      amount: Decimal.parse(_amount.text),
      date: selectedDate,
      accountTo: _accountTo.text,
      note: _note?.text,
    );

    dev.log(newTransaction.toString());
  }
}

const double sizeboxSize = 300;
