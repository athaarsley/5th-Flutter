
import 'package:dashboard/ui/bottom_app.dart';
import 'package:dashboard/ui/info_app.dart';
import 'package:dashboard/ui/tombol_atas_app.dart';
import 'package:dashboard/ui/transaction_list_app.dart';
import 'package:dashboard/model/theme.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            width: 160,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              border: Border.all(color: kPrimaryColor,),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.bolt, color: kPrimaryColor),
                Text(
                  'Fast Transaction',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ]
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kGrey,
              kWhite,
              kGrey,
              kWhite,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TombolAtasApp(),
              InfoApp(),
              TransactionListApp(),
            ]
          ),
        ),
      ),
      bottomNavigationBar: BottomApp(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle FAB tap
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
