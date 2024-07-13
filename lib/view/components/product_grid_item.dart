import 'package:flutter/material.dart';
import 'package:hng_stage_3_kicks_store/src/config.dart';
import 'package:hng_stage_3_kicks_store/src/screens.dart';
import 'package:hng_stage_3_kicks_store/view/components/product_display.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({
    super.key,
    required this.dummyProducts,
    required this.leading,
    required this.trailing,
    required this.trailingOntap,
  });

  final List<ProductModel> dummyProducts;
  final String leading;
  final String trailing;
  final VoidCallback trailingOntap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: SizedBox(
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  leading,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kBlack,
                    fontFamily: inter,
                  ),
                ),
                GestureDetector(
                  onTap: trailingOntap,
                  child: Text(
                    trailing,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kForestGreen,
                      fontFamily: inter,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 360,
              height: 210,
              child: ListView.builder(
                itemCount: dummyProducts.length,
                itemBuilder: (context, index) {
                  ProductModel product = dummyProducts[index];
                  return ProductDisplay(
                    productName: product.productName.toUpperCase(),
                    productImage: product.productImage,
                    productRating: product.rating,
                    productPrice: product.productPrice,
                    actionButton1: ProductDisplayActionButton(
                      actionImage: AppImages.kLikedLogo,
                      action: () {},
                    ),
                    actionButton2: ProductDisplayActionButton(
                      actionImage: AppImages.kCheckoutLogo,
                      action: () {},
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
