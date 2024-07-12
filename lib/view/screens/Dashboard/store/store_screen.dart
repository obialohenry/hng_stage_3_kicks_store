import 'package:flutter/material.dart';

import '../../../../src/config.dart';

class StoreScreen extends StatefulWidget {
  StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kWhite,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            store,
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
