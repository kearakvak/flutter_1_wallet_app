// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostCard extends StatelessWidget {
  const PostCard(
      {this.balance,
      this.cardNumber,
      this.color,
      this.expiryMonth,
      this.expiryYear,
      super.key});
  final double? balance;
  final int? cardNumber;
  final int? expiryMonth;
  final int? expiryYear;
  final color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Colors.blue.shade200,
          borderRadius: BorderRadius.circular(12),
        ),
        width: 300,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Balance",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  // padding: EdgeInsets.all(5.0),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(12),
                  //   color: Colors.yellow.shade300,
                  // ),
                  height: 50,
                  //color: Colors.white38,
                  child: Image.asset(
                    "assets/icons/visa.png",
                    // colorBlendMode: BlendMode.darken,
                    // color: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "\$$balance",
                  style: TextStyle(
                    fontSize: 36,
                    color: Color.fromARGB(226, 236, 230, 230),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 50,
                  child: Image.asset(
                    'assets/icons/sim-card (1).png',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Card Number
                Text(cardNumber.toString() ?? "**** 3456"),
                //card Expiry Data
                Text('$expiryMonth/$expiryYear'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
