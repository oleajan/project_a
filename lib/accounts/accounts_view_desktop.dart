import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:project_a/commons/models/accounts_model.dart';
import 'package:project_a/constants.dart';

class AccountsViewDesktop extends StatefulWidget {
  const AccountsViewDesktop({Key? key}) : super(key: key);

  @override
  State<AccountsViewDesktop> createState() => _AccountsViewDesktopState();
}

class _AccountsViewDesktopState extends State<AccountsViewDesktop> {
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
        title: const Text('Accounts'),
        backgroundColor: secondaryColor,
        toolbarHeight: 80,
      ),
      body: Row(
        children: [
          // * 1st column
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Card(
                          child: SizedBox(
                            width: 300,
                            height: 140,
                            child: Center(
                              child: Text('data1'),
                            ),
                          ),
                        ),
                        Card(
                          child: SizedBox(
                            width: 300,
                            height: 140,
                            child: Center(
                              child: Text('data2'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 8,
                          right: 16,
                          bottom: 8,
                        ),
                        child: Container(
                          // TODO card for transactions here
                          child: Container(
                            color: Colors.deepPurple[300],
                          ),
                          color: Colors.deepPurple[300],
                          height: 120,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // * 2nd Column
          // TODO DASHBOARD RIGHT SIDEBAR
          Container(
            width: 400,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
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
