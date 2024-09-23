import 'package:flutter/material.dart';
import 'package:water/App/presentation/widgets/Drawer/inventory_edit_product_drawer.dart';
import 'package:water/widgets/image_number_product_price_container_Widget.dart';
import 'package:water/widgets/payment_method.dart';
import 'package:water/widgets/pill_payment.dart';
import 'package:water/widgets/review_product_water_item.dart';
import 'package:water/widgets/search_text_field_review_product.dart';
import 'package:water/widgets/take_photo_widget.dart';

class ReviewProductScreenDetails extends StatelessWidget {
  ReviewProductScreenDetails({super.key});


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: const InventoryEditProductDrawer(),
        body: Column(
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
                            onTap: (){
                              //TODO SHOW DRAWER
                            },
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
                    const PillPayment(textButton: 'اصدار الفاتورة',),
                  ],
                ),
              ),
    );
  }
}
