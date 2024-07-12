import 'package:flutter/material.dart';

import '../../../../src/config.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kWhite,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            account,
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
