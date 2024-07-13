import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hng_stage_3_kicks_store/src/config.dart';

import '../../src/components.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.showSuffix,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.labelText,
  });

  TextEditingController? controller;
  bool showSuffix = false;
  String? labelText;
  final String hintText;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelText == null
            ? Column(
                children: [
                  Text(
                    labelText ?? "x",
                    style: TextStyle(
                      fontFamily: inter,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.kBlack.withOpacity(0.7),
                    ),
                  ),
                  const Gap(10),
                ],
              )
            : const SizedBox.shrink(),
        TextFormField(
          keyboardType: keyboardType,
          onChanged: (value) {},
          controller: controller,
          style: const TextStyle(
            color: AppColors.kBlack,
            fontWeight: FontWeight.w400,
            fontFamily: inter,
            fontSize: 16,
          ),
          onTap: () {},
          enabled: true,
          decoration: InputDecoration(
            //  label:
            border: OutlineInputBorder(),
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.kBlack.withOpacity(0.5),
              fontFamily: 'TTHoves',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),

            suffixIcon: showSuffix
                ? Image.asset(
                    AppImages.kSearchLogo,
                    scale: 3,
                  )
                : SizedBox.fromSize(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: AppColors.kBlack.withOpacity(0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
