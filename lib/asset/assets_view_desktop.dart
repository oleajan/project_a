import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:project_a/commons/models/accounts_model.dart';
import 'package:project_a/constants.dart';

class AssetsViewDesktop extends StatefulWidget {
  const AssetsViewDesktop({Key? key}) : super(key: key);

  @override
  State<AssetsViewDesktop> createState() => _AssetsViewDesktopState();
}

class _AssetsViewDesktopState extends State<AssetsViewDesktop> {
  final List<Accounts> _accounts = [
    new Accounts(
      1,
      AccountType.asset,
      'Wallet',
      DateTime.now(),
      Decimal.parse('2400'),
      null,
    ),
    new Accounts(
      2,
      AccountType.asset,
      'GCASH',
      DateTime.now(),
      Decimal.parse('1500'),
      null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets'),
        backgroundColor: secondaryColor,
        toolbarHeight: 80,
      ),
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _accounts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    top: 8,
                    right: 16,
                    bottom: 8,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.grey,
                    child: Text(index.toString()),
                  ),
                );
              },
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 10),
              )
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: secondaryColor,
        onPressed: () {},
      ),
    );
  }
}
