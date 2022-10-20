// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ListTile1 extends StatelessWidget {
  const ListTile1({this.icon, this.tileSubTitle, this.tileTitle, super.key});
  final String? icon;
  final String? tileTitle;
  final String? tileSubTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //icon
          Row(
            children: [
              Container(
                height: 80,
                padding: EdgeInsets.all(15.0),
                child: Image.asset(icon ?? 'assets/icons/house.png'),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileTitle ?? "Statistics",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    tileSubTitle ?? 'Payments and icome',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Icon(
            Icons.arrow_forward_ios_outlined,
          ),
        ],
      ),
    );
  }
}
