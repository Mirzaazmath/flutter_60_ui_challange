import 'package:flutter/material.dart';
import 'package:ui_31_money_transfer_app/data/transactions_data.dart';
import 'package:ui_31_money_transfer_app/widgets/transaction_card_widget.dart';

import '../widgets/balance_card.dart';
import '../widgets/options_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpeg"),
          ),
        ),
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dev_73arner",
              style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "**** **** **9872",
              style: TextStyle(
                  color: Theme.of(context).primaryColorLight, fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton.outlined(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Theme.of(context).primaryColorDark,
              )),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //// ***** Balance Card ****** /////
            const BalanceCard(),

            const SizedBox(
              height: 20,
            ),
            //// ***** Option List ****** /////
            const OptionsWidget(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions",
                  style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Theme.of(context).primaryColorDark,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //// ***** Transaction List ****** /////
            Expanded(
                child: ListView.builder(
                    itemCount: transactionList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return TransactionCardWidget(
                          data: transactionList[index]);
                    }))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        shape: const CircleBorder(),
        onPressed: () {},
        child: Icon(
          Icons.qr_code_scanner,
          color: Theme.of(context).primaryColorDark,
          size: 30,
        ),
      ),
    );
  }
}
