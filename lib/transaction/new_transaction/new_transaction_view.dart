import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
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
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: sizeboxSize,
                    child: TextField(
                      autofocus: true,
                      controller: _name,
                      decoration: const InputDecoration(
                        // icon: Icon(Icons.person),
                        icon: Icon(Icons.person),
                        iconColor: Color.fromARGB(255, 54, 49, 49),
                        hintText: 'Payee or Item Name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  // icon
                  Ink(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
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

              // amount
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 280,
                    child: TextField(
                      controller: _amount,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        icon: Ink(
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(),
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
                  // icons
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Ink(
                          decoration: const ShapeDecoration(
                            shape: CircleBorder(),
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
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                            fixedSize:
                                MaterialStateProperty.all(const Size(40, 38))),
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

              // datetime
              Row(
                children: [
                  SizedBox(
                    width: 130,
                    child: DateTimeField(
                      mode: DateTimeFieldPickerMode.date,
                      selectedDate: DateTime.now(),
                      onDateSelected: (DateTime value) => print(value),
                      decoration: const InputDecoration(
                        icon: Icon(Icons.calendar_month),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    child: DateTimeField(
                      mode: DateTimeFieldPickerMode.time,
                      onDateSelected: (DateTime value) => print(value),
                      selectedDate: DateTime.now(),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.lock_clock),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

const double sizeboxSize = 380;
