import 'package:flutter/material.dart';
import 'package:hng_stage_3_kicks_store/src/config.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.showSuffix,
    required TextEditingController controller,
    required this.hintText,
    this.keyboardType,
  }) : _controller = controller;

  final TextEditingController _controller;
  bool showSuffix = false;
  final String hintText;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextFormField(
        keyboardType: keyboardType,
        onChanged: (value) {},
        controller: _controller,
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
    );
  }
}
