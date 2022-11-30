import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';


//format of TransactionList shown in the app
class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
    // for displaying the list of transactions

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
              return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      //price part
                      '\₺ ${transactions[index].amount.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 235, 4, 4),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transactions[index].title,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(new DateFormat.yMd().add_jm().add_Hm().format(transactions[index].date),
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            );
          },
          itemCount: transactions.length,
        ),
      );
  }
}
