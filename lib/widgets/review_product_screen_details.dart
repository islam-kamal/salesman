import 'package:flutter/material.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/drawer_review_product_screen.dart';
import 'package:water/widgets/image_number_product_price_container_Widget.dart';
import 'package:water/widgets/payment_method.dart';
import 'package:water/widgets/pill_payment.dart';
import 'package:water/widgets/review_product_water_item.dart';
import 'package:water/widgets/search_text_field_review_product.dart';
import 'package:water/widgets/store_deal_container_widget.dart';
import 'package:water/widgets/take_photo_widget.dart';

class ReviewProductScreenDetails extends StatelessWidget {
  ReviewProductScreenDetails({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: const DrawerReviewProductScreen(),
        key: _key,
        body: Padding(
          padding: const EdgeInsets.only(right: 18, left: 18, top: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.041
                          : MediaQuery.of(context).size.height * 0.052,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () => _key.currentState!.openDrawer(),
                              child: const ImageIcon(AssetImage(
                                  'assets/images/Icon-Wrappppper.png')),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            const Opacity(
                              opacity: 0.8,
                              child: Text(
                                'اخفاء القائمة',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    const StoreDealContainer(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).size.height * 0.056,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Button(
                                color: Colors.black,
                                iconImage: 'assets/images/VectorAdddd.png',
                                buttonName: 'اضافة عميل',
                                textColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchTextFieldReviewProduct(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    const ImageNumberProductPriceContainer(),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () => _key.currentState!.openDrawer(),
                            child: const ReviewProductWaterItem(),
                          );
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.006,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Text(
                            'الاجمالي',
                            style: TextStyle(
                                color: Color(0xff07326A),
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '42 ر.س',
                            style: TextStyle(
                                color: Color(0xff07326A),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const PaymentMethod(),
                    const TakePhoto(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.006,
                    ),
                    const PillPayment(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
