import 'package:flutter/material.dart';
import 'package:hng_stage_3_kicks_store/src/components.dart';
import 'package:hng_stage_3_kicks_store/src/config.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: KicksAppBar.mainAppBar(
        context,
        text: "Cart",
        trailing: const Text(
          "4 Items",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
