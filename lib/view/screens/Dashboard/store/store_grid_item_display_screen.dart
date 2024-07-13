import 'package:flutter/material.dart';
import 'package:hng_stage_3_kicks_store/src/components.dart';
import 'package:hng_stage_3_kicks_store/src/screens.dart';
import '../../../../src/config.dart';

class StoreGridItemDisplayScreen extends StatelessWidget {
  StoreGridItemDisplayScreen({
    Key? key,
    required this.itemCategory,
  }) : super(key: key);
  final String itemCategory;
  final List<ProductModel> dummyProducts = [
    ProductModel(
        productImage: AppImages.kKicksLogo,
        productName: "Manchester United Tottenham fc",
        productPrice: "₦300,000",
        rating: "5"),
    ProductModel(
        productImage: AppImages.kKicksLogo,
        productName: "Manchester United Tottenham fc",
        productPrice: "₦300,000",
        rating: "5"),
    ProductModel(
        productImage: AppImages.kKicksLogo,
        productName: "Manchester United Tottenham fc",
        productPrice: "₦300,000",
        rating: "5"),
    ProductModel(
        productImage: AppImages.kKicksLogo,
        productName: "Manchester United Tottenham fc",
        productPrice: "₦300,000",
        rating: "5"),
    ProductModel(
        productImage: AppImages.kKicksLogo,
        productName: "Manchester United Tottenham fc",
        productPrice: "₦300,000",
        rating: "5"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: KicksAppBar.mainAppBar(
        context,
        text: itemCategory,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: SingleChildScrollView(
          child: GridView.builder(
            itemCount: dummyProducts.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              ProductModel product = dummyProducts[index];
              return ProductAtItemCategoryDisplay(
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
          ),
        ),
      ),
    );
  }
}
