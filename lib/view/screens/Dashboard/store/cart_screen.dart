import 'package:flutter/material.dart';
import 'package:hng_stage_3_kicks_store/src/components.dart';
import 'package:hng_stage_3_kicks_store/src/config.dart';
import 'package:hng_stage_3_kicks_store/src/screens.dart';
import 'package:hng_stage_3_kicks_store/view/screens/Dashboard/store/check_out_screen.dart';

import '../../../components/summary_items.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final TextEditingController _controller = TextEditingController();
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
        text: "Cart",
        trailing: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "4 Items",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                  itemCount: dummyProducts.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    ProductModel product = dummyProducts[index];
                    return CartItemDisplay(
                      productImage: product.productImage,
                      productName: product.productName,
                      productPrice: product.productPrice,
                    );
                  }),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Order Summary",
                    style: TextStyle(
                      fontFamily: inter,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: AppColors.kBlack,
                    ),
                  ),
                  const Gap(20),
                  const SummaryItems(
                    title: "Items",
                    value: "4",
                  ),
                  const Gap(14),
                  const SummaryItems(
                    title: "Delivery",
                    value: "₦5,000",
                  ),
                  const Gap(14),
                  const SummaryItems(
                    title: "Services",
                    value: "₦5,000",
                  ),
                  const Gap(20),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: AppColors.kBlack.withOpacity(0.24),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Do you have a Coupon Code?",
                          style: TextStyle(
                              fontFamily: inter,
                              fontWeight: FontWeight.w500,
                              color: AppColors.kBlack,
                              fontSize: 16),
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomTextField(
                                hintText: "Enter Coupon Code",
                                showSuffix: false,
                                controller: _controller,
                              ),
                            ),
                            const Gap(3),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.kForestGreen),
                              ),
                              child: const Text(
                                "Apply",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.kForestGreen,
                                  fontFamily: inter,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 104,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
          border: Border.all(
            color: AppColors.kBlack.withOpacity(0.12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sub Total",
                  style: TextStyle(
                    fontFamily: inter,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kBlack.withOpacity(0.6),
                  ),
                ),
                const Gap(10),
                const Text(
                  " ₦5,000",
                  style: TextStyle(
                      fontFamily: inter,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kForestGreen),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckOutScreen(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.kForestGreen,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  "Proceed to Checkout",
                  style: TextStyle(
                    fontFamily: inter,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kWhite,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CartItemDisplay extends StatelessWidget {
  const CartItemDisplay(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.productPrice});
  final String productImage;
  final String productPrice;
  final String productName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      color: AppColors.kTransparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages.kStarLogo),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Manckester United",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: inter,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kBlack,
                ),
              ),
              const Gap(10),
              const Text(
                "₦5,000",
                style: TextStyle(
                  fontFamily: inter,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kForestGreen,
                ),
              ),
              const Gap(10),
              Row(
                children: [
                  const Text(
                    "M",
                    style: TextStyle(
                      fontFamily: inter,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kBlack,
                    ),
                  ),
                  SizedBox(
                    width: 72,
                    height: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.kAsh,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.remove,
                                color: AppColors.kWhite,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                            fontFamily: inter,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kBlack.withOpacity(0.8),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.kAsh,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: AppColors.kWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Gap(25),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        AppImages.kTrashLogo,
                        width: 16,
                        height: 16,
                      )),
                  Text(
                    "Remove",
                    style: TextStyle(
                      fontFamily: inter,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kBlack.withOpacity(0.4),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

