import 'package:flutter/material.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/drawer_edit_inventory_screen.dart';
import 'package:water/widgets/drawer_first_add_inventory_screen.dart';
import 'package:water/widgets/drawer_second_add_inventory_screen.dart';
import 'package:water/widgets/image_number_product_price_container_Widget.dart';
import 'package:water/widgets/navigate_basic_container.dart';
import 'package:water/widgets/pill_payment.dart';
import 'package:water/widgets/review_product_water_item.dart';
import 'package:water/widgets/search_text_field.dart';

class InventoryCurrentRequestDetailsScreenBody extends StatelessWidget {
  InventoryCurrentRequestDetailsScreenBody({super.key});

final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: _key,
        drawer: const DrawerEditInventoryScreen(),
        //DrawerFirstAddInventoryScreen(),
        //DrawerSecondAddInventoryScreen(),
        body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back)),
                        const Text(
                          'تفاصيل الطلب',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const SearchTextField(
                      hintTextField: 'البحث عن منتج',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                    const ImageNumberProductPriceContainer(),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: const ReviewProductWaterItem(),
                          );
                        }),
                        SizedBox(
                      height: MediaQuery.of(context).size.height * 0.006,
                    ),
                        Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.03
                          : MediaQuery.of(context).size.height * 0.05,
                      decoration: const BoxDecoration(
                          color: Color(0xffEBF7FC),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(11),
                              bottomLeft: Radius.circular(11))),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Text(
                                'الاجمالي',
                                style: TextStyle(
                                    color: Color(0xff0056C9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '42 ر.س',
                                style: TextStyle(
                                    color: Color(0xff0056C9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.003,
                    ),
                    const PillPayment(textButton: 'حفظ التعديلات' , dialogName: 'edit',)
                  ],
                ),
              ),
    );
  }
}
