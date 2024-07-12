import 'package:flutter/material.dart';

import '../../../../src/config.dart';

class OrdersScreen extends StatefulWidget {
  OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kWhite,
        appBar: AppBar(
            automaticallyImplyLeading: false,
          title: const Text(
            orders,
            style: TextStyle(
              fontFamily: inter,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            comingSoon,
            style: TextStyle(
              fontFamily: inter,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ));
  }
}
