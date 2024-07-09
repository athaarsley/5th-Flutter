import 'package:flutter/material.dart';
import 'package:dashboard/theme.dart';

class InfoApp extends StatelessWidget {
  const InfoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildInfoCard(context, 'Total Penjualan', 'Rp. 300.000'),
        SizedBox(height: 16),
        _buildInfoCard(context, 'Saldo Kas', 'Rp. 300.000'),
      ],
    );
  }

  Widget _buildInfoCard(BuildContext context, String title, String amount) {
    return Container(
      width: MediaQuery.of(context).size.width, // Menggunakan lebar layar penuh
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
      child: Card(
        color: kPrimaryColor2,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}