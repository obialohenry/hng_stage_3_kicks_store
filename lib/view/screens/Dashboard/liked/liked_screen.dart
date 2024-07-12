import 'package:flutter/material.dart';

import '../../../../src/config.dart';

class LikedScreen extends StatefulWidget {
  LikedScreen({Key? key}) : super(key: key);

  @override
  State<LikedScreen> createState() => _LikedScreenState();
}

class _LikedScreenState extends State<LikedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kWhite,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            liked,
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
