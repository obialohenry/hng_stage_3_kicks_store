import 'package:flutter/material.dart';

import '../../src/config.dart';

class KicksAppBar {
  static PreferredSizeWidget mainAppBar(
    BuildContext context, {
    String? text,
    Widget? trailing,
    Widget? bottom,
    double? textSize,
    void Function()? callback,
  }) {
    return AppBar(
      backgroundColor: AppColors.kWhite,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: AppColors.kBlack,
          ),
          splashRadius: 20,
          onPressed: () {
            if (callback != null) {
              callback();
            }
            Navigator.pop(context);
          },
        ),
      ),
      title: text != null
          ? Text(
              text,
              style: TextStyle(
                fontSize: textSize ?? 16,
                fontFamily: inter,
                fontWeight: FontWeight.w500,
                color: AppColors.kBlack,
              ),
            )
          : const SizedBox.shrink(),
      centerTitle: false,
      actions: [trailing ?? const SizedBox.shrink()],
    );
  }
}
