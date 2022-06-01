import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:project_a/constants.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        // * TABLET
        if (dimens.maxWidth >= 600) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: secondaryColor,
              title: const Text(
                'Transactions',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
            floatingActionButton: FloatingActionButton(
              heroTag: 'newTransaction',
              child: const Icon(Icons.add),
              onPressed: () {
                GoRouter.of(context).push('/transactions/new');
              },
            ),
            body: const Center(
              child: Text('T R A N S A C T I O N S'),
            ),
          );
        }

        // * Mobile
        return Scaffold(
          appBar: AppBar(
            backgroundColor: secondaryColor,
            title: const Text(
              'Transactions',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: const Center(
            child: Text('M O B I L E'),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              GoRouter.of(context).push('/transactions/new');
            },
          ),
        );
      },
    );
  }
}
