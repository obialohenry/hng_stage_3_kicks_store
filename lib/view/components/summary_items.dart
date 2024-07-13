import 'package:flutter/material.dart';
import 'package:hng_stage_3_kicks_store/src/config.dart';

class SummaryItems extends StatelessWidget {
  const SummaryItems({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: inter,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColors.kBlack,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontFamily: inter,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColors.kBlack,
          ),
        ),
      ],
    );
  }
}
