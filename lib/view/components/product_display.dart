import 'package:flutter/material.dart';

import '../../src/config.dart';

class ProductDisplay extends StatelessWidget {
  const ProductDisplay({
    super.key,
    required this.actionButton1,
    required this.actionButton2,
    this.productImage,
    this.productPrice,
    this.productName,
    required this.productRating,
  });
  final Widget actionButton1;
  final Widget actionButton2;
  final String? productImage;
  final String? productPrice;
  final String productRating;
  final String? productName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        width: 136,
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              width: 136,
              height: 106,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: AssetImage(productImage ?? AppImages.kKicksLogo),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    actionButton1,
                    actionButton2,
                  ],
                ),
              ),
            ),
            Text(
              productPrice ?? "₦500,000",
              style: const TextStyle(
                fontFamily: inter,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColors.kForestGreen,
              ),
            ),
            Text(
              productName ?? "No Product Available",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: inter,
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColors.kBlack,
              ),
            ),
            SizedBox(
              width: 26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productRating,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: inter,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.kBlack.withOpacity(0.6),
                    ),
                  ),
                  Image.asset(
                    AppImages.kStarLogo,
                    width: 16,
                    height: 16,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductAtItemCategoryDisplay extends StatelessWidget {
  const ProductAtItemCategoryDisplay({
    Key? key,
    required this.actionButton1,
    required this.actionButton2,
    this.productImage,
    this.productPrice,
    this.productName,
    this.productDescription,
    required this.productRating,
  }) : super(key: key);
  final Widget actionButton1;
  final Widget actionButton2;
  final String? productImage;
  final String? productPrice;
  final String productRating;
  final String? productName;
  final String? productDescription;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        width: 136,
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              width: 136,
              height: 106,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: AssetImage(productImage ?? AppImages.kKicksLogo),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    actionButton1,
                    actionButton2,
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productPrice ?? "₦500,000",
                  style: const TextStyle(
                    fontFamily: inter,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.kForestGreen,
                  ),
                ),
                SizedBox(
                  width: 26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productRating,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: inter,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: AppColors.kBlack.withOpacity(0.6),
                        ),
                      ),
                      Image.asset(
                        AppImages.kStarLogo,
                        width: 16,
                        height: 16,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text(
              productName ?? "No Product Available",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: inter,
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColors.kBlack,
              ),
            ),
            Text(
              productDescription ?? "Men's Jersey",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: inter,
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.kBlack.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDisplayActionButton extends StatelessWidget {
  const ProductDisplayActionButton({
    super.key,
    required this.action,
    required this.actionImage,
  });
  final String actionImage;
  final VoidCallback action;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColors.kWhite,
        ),
        child: Image.asset(
          actionImage,
          width: 16,
          height: 16,
        ),
      ),
    );
  }
}
