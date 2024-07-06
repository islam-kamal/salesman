import 'package:flutter/material.dart';
import 'package:water/widgets/drawer_edit_inventory_screen.dart';
import 'package:water/widgets/drawer_first_add_inventory_screen.dart';
import 'package:water/widgets/drawer_second_add_inventory_screen.dart';
import 'package:water/widgets/finish_button_inventory_screen.dart';
import 'package:water/widgets/image_number_product_price_container_inventory_screen.dart';
import 'package:water/widgets/inventory_screen_water_item.dart';
import 'package:water/widgets/search_text_field_inventory_screen.dart';
import 'package:water/widgets/trader_deal_inventory_screen.dart';
import 'package:water/basics/shared.dart';

class InventoryScreenDetails extends StatelessWidget{
  InventoryScreenDetails({super.key});

final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
        drawer: DrawerFirstAddInventoryScreen(),    //DrawerSecondAddInventoryScreen(),     //DrawerEditInventoryScreen(),
        key: _key,
        body: Padding(
          padding: const EdgeInsets.only(right: 18 ,left: 18 , top: 48 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    width: Shared.width * 0.23,
                   height: Shared.height * 0.041,
                   decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(8)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 11),
                     child: Row(
                           children: [
                            InkWell(
                              onTap: () => _key.currentState!.openDrawer(),
                              child: const ImageIcon(
                                AssetImage('assets/images/Icon-Wrappppper.png')
                              ),
                            ),
                            SizedBox(
                              width: Shared.width * 0.01,
                            ),
                          const Opacity(
                            opacity: 0.8,
                              child: Text(
                                'اخفاء القائمة',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300
                                ),
                                ),
                            ),
                           ],
                     ),
                   ),
                  ),
                  SizedBox(
                    height: Shared.height * 0.025,
                  ),
                  const TraderDealInventoryScreen(),
                  SizedBox(
                    height: Shared.height * 0.025,
                  ),
                  const FinishButtonInventoryScreen(),
                ],
              ),
              ),
                Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchTextFieldInventoryScreen(),
                    SizedBox(
                    height: Shared.height * 0.015,
                  ),
                    const ImageNumberProductPriceContainerInventoryScreen(),
                    ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context , index){
                      return InkWell(
                        onTap: () => _key.currentState!.openDrawer(),
                        child: InventoryScreenWaterItem(),
                        );
                    }
                    ),
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