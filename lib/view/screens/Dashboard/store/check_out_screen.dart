import 'package:flutter/material.dart';
import 'package:hng_stage_3_kicks_store/src/components.dart';
import 'package:hng_stage_3_kicks_store/src/config.dart';
import 'package:hng_stage_3_kicks_store/src/screens.dart';
import 'package:hng_stage_3_kicks_store/view/components/app_bar.dart';
import 'package:hng_stage_3_kicks_store/view/components/custom_text_field.dart';

import '../../../components/summary_items.dart';

class CheckOutScreen extends StatefulWidget {
  CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool selectDeliveryOption = true;
  bool selectPickUpOption = false;
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
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: KicksAppBar.mainAppBar(context, text: "CheckOut"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Items",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: inter,
                        color: AppColors.kBlack,
                      ),
                    ),
                    const Gap(15),
                    ListView.builder(
                      itemCount: dummyProducts.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        ProductModel product = dummyProducts[index];
                        return CheckOutItems(product: product);
                      },
                    )
                  ],
                ),
                const Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Delivery Options",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: inter,
                        color: AppColors.kBlack,
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.all(4),
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(8),
                    //     color: AppColors.kAsh50,
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Container(
                    //         padding: EdgeInsets.all(10),
                    //         color:selectDeliveryOption? AppColors.kWhite:AppColors.kTransparent,
                    //         child: Text(
                    //           "Delivery",
                    //           style: TextStyle(
                    //             fontFamily: inter,
                    //             fontSize: 14,
                    //             fontWeight: FontWeight.w600,
                    //             color: AppColors.kBlack,
                    //           ),
                    //         ),
                    //       ),
                    //       Container(
                    //         padding: EdgeInsets.all(10),
                    //         color: AppColors.kWhite,
                    //         child: Text(
                    //           "Pickup",
                    //           style: TextStyle(
                    //             fontFamily: inter,
                    //             fontSize: 14,
                    //             fontWeight: FontWeight.w600,
                    //             color: AppColors.kBlack,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const Gap(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          showSuffix: false,
                          hintText: "First Name",
                          labelText: "First Name",
                        ),
                        const Gap(12),
                        CustomTextField(
                          showSuffix: false,
                          hintText: "Last Name",
                          labelText: "Last Name",
                        ),
                        const Gap(12),
                        CustomTextField(
                          showSuffix: false,
                          hintText: "Email Address",
                          labelText: "Email Address",
                        ),
                        const Gap(12),

                        ///PhoneNumber
                        CustomTextField(
                          showSuffix: false,
                          hintText: "Address Line 1",
                          labelText: "Address Line 1",
                        ),
                        const Gap(12),
                        CustomTextField(
                          showSuffix: false,
                          hintText: "Address Line 2",
                          labelText: "Address Line 2",
                        ),
                        const Gap(12),
                        //Country State
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [],
                        ),
                        const Gap(12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomTextField(
                                showSuffix: false,
                                hintText: "Post Code",
                                labelText: "Post Code",
                              ),
                            ),
                            Expanded(
                              child: CustomTextField(
                                showSuffix: false,
                                hintText: "City",
                                labelText: "City",
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Payment Options",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: inter,
                        color: AppColors.kBlack,
                      ),
                    ),
                    const Gap(15),

                    ///TabBar
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          showSuffix: false,
                          hintText: "Name on card",
                          labelText: "Name on card",
                        ),
                        const Gap(12),
                        CustomTextField(
                          showSuffix: false,
                          hintText: "Card number",
                          labelText: "Card number",
                        ),
                        const Gap(12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomTextField(
                                showSuffix: false,
                                hintText: "Expiry Date",
                                labelText: "Expiry Date",
                              ),
                            ),
                            Expanded(
                              child: CustomTextField(
                                showSuffix: false,
                                hintText: "CVV",
                                labelText: "CVV",
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
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
                  "Make Payment",
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

class CheckOutItems extends StatelessWidget {
  const CheckOutItems({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: AssetImage(product.productImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: inter,
                    color: AppColors.kBlack,
                  ),
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.productPrice,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: inter,
                        color: AppColors.kForestGreen,
                      ),
                    ),
                    Text(
                      "M",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: inter,
                        color: AppColors.kBlack.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      "XI",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: inter,
                        color: AppColors.kBlack.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
