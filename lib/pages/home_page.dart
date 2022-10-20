// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/button.dart';
import 'package:flutter_application_1/util/post_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_application_1/util/list_tile1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.yellow.shade200,
        child: Icon(
          Icons.monetization_on_outlined,
          color: Colors.red.shade500,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.home_max_outlined,
                  color: Colors.blue.shade500,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.settings_input_antenna_outlined,
                  color: Colors.green.shade400,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          //app Bar
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Cards",
                        style: TextStyle(
                            fontSize: 25, color: Colors.yellow.shade800),
                      ),
                    ],
                  ),
                  // Plus Button
                  Container(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.red.shade500,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade400,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //SizedBox(height: 10),

          //Cards
          Container(
            height: 250,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                PostCard(
                  balance: 1212.333,
                  cardNumber: 1234560,
                  expiryMonth: 10,
                  expiryYear: 25,
                  color: Colors.redAccent.shade200,
                ),
                PostCard(
                  balance: 1212.333,
                  cardNumber: 1234560,
                  expiryMonth: 10,
                  expiryYear: 25,
                  color: Colors.green.shade300,
                ),
                PostCard(
                  balance: 1212.333,
                  cardNumber: 1234560,
                  expiryMonth: 10,
                  expiryYear: 25,
                  color: Color.fromARGB(255, 158, 146, 33),
                ),
                PostCard(
                  balance: 1212.333,
                  cardNumber: 1234560,
                  expiryMonth: 10,
                  expiryYear: 25,
                  color: Colors.blueAccent.shade200,
                ),
              ],
            ),
          ),
          //smooth_page
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            axisDirection: Axis.horizontal,
            effect: SlideEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 24.0,
                dotHeight: 16.0,
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Color.fromARGB(255, 80, 204, 226)),
          ),
          //3 Buttons --> Sent/Pay/Bills
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              // crossAxisAlignment: CorssAxisAlignment.,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                //send button
                Button(),
                Button(
                  iconImagePath: 'assets/icons/credit-card (2).png',
                  buttonText: 'Pay',
                ),
                Button(
                  iconImagePath: 'assets/icons/receipt.png',
                  buttonText: 'Bills',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //Column ->stats + Transactions
          Container(
            height: 180,
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ListTile1(
                  icon: 'assets/icons/right-arrow.png',
                  tileTitle: 'Statistics',
                  tileSubTitle: 'Payments and Icome,',
                ),
                ListTile1(
                  icon: 'assets/icons/setting.png',
                  tileTitle: 'Statistics',
                  tileSubTitle: 'Payments and Icome,',
                ),
                ListTile1(
                  icon: 'assets/icons/save-money.png',
                  tileTitle: 'Statistics',
                  tileSubTitle: 'Payments and Icome,',
                ),
                ListTile1(
                  icon: 'assets/icons/right-arrow.png',
                  tileTitle: 'Statistics',
                  tileSubTitle: 'Payments and Icome,',
                ),
                ListTile1(
                  icon: 'assets/icons/right-arrow.png',
                  tileTitle: 'Statistics',
                  tileSubTitle: 'Payments and Icome,',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
