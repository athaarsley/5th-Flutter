import 'package:flutter/material.dart';
import 'package:dashboard/theme.dart';
import 'transaksi_model.dart';

class TransactionListApp extends StatelessWidget {
  const TransactionListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kBlackColor),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Transaksi Terakhir',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kPrimaryColor),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: transaksiItem.length,
            itemBuilder: (context, index) {
              return _buildTransactionItem(
                transaksiItem[index].invoice,
                transaksiItem[index].date,
                transaksiItem[index].name,
                transaksiItem[index].itemCount,
                transaksiItem[index].amount,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(String invoice, String date, String name, String itemCount, String amount) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
      decoration: BoxDecoration(
        color: kPrimaryColor2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        subtitle: Text('$itemCount\n$date'),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('$invoice', style: const TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor)),
            Text('Rp. $amount', style: const TextStyle(fontWeight: FontWeight.bold, color: kBlackColor, fontSize: 20)),
          ],
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        isThreeLine: true,
      ),
    );
  }
}
