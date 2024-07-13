import 'package:flutter/material.dart';
import 'package:hng_stage_3_kicks_store/src/components.dart';
import 'package:hng_stage_3_kicks_store/view/components/custom_text_field.dart';
import '../../../../src/config.dart';
import '../../../../src/screens.dart';

class StoreScreen extends StatefulWidget {
  StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<ProductModel> dummyProducts = [
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
  final TextEditingController _controller = TextEditingController();
  String itemCategory = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 15.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: CustomTextField(
                      controller: _controller,
                      showSuffix: true,
                    )),
                    const Gap(12),
                    Image.asset(
                      AppImages.kNotificationLogo,
                      width: 24,
                      height: 24,
                    ),
                    const Gap(12),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => CartScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.kForestGreen,
                        ),
                        child: Image.asset(
                          AppImages.kCheckoutNotifLogo,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Gap(20),
              Container(
                height: 130,
                width: double.infinity,
                color: AppColors.kForestGreen,
                child: const Center(
                  child: Text(
                    "2024/2025 SHOE ARRIVAL",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                      color: AppColors.kWhite,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              ProductGridItem(
                dummyProducts: dummyProducts,
                leading: "New Arrivals",
                trailing: "See more",
                trailingOntap: () {
                  setState(() {
                    itemCategory = "New Arrivals";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreGridItemDisplayScreen(itemCategory: itemCategory),
                    ),
                  );
                },
              ),
              ProductGridItem(
                dummyProducts: dummyProducts,
                leading: "Top Sellers",
                trailing: "See more",
                trailingOntap: () {
                  setState(() {
                    itemCategory = "Top Sellers";
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreGridItemDisplayScreen(itemCategory: itemCategory),
                    ),
                  );
                },
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "More of what you like",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.kBlack,
                              fontFamily: inter,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "See more",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.kForestGreen,
                                fontFamily: inter,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
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
                        scrollDirection: Axis.vertical,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductModel {
  final String productName;
  final String productImage;
  final String productPrice;
  final String rating;
  ProductModel({
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.rating,
  });
}
