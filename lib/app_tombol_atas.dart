import 'package:flutter/material.dart';
import 'package:dashboard/theme.dart';


class TombolAtasApp extends StatelessWidget {
  const TombolAtasApp({Key? key}) : super(key: key);

  Widget _buildContainer(IconData icon, String text) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kPrimaryColor,),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: Offset(0, 3),
            ),
          ],
        ),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Icon(icon,
            size: 40,
            color: kPrimaryColor),
          SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(
              color: kBlackColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildContainer(Icons.shopping_cart, 'Belum Dibayar'),
          _buildContainer(Icons.timelapse, 'Dimasak'),
          _buildContainer(Icons.flag, 'Siap Ambil'),
        ],
      ),
    );
  }
}