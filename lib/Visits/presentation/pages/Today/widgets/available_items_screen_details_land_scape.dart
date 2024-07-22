import 'package:water/Base/common/navigtor.dart';
import 'package:water/Visits/presentation/pages/Today/available_products_screen.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/button.dart';
import '../../../../../widgets/products_and_prices_available_items_screen.dart';
import '../../../../../widgets/store_deal_container_widget.dart';
import '../../../../../widgets/water_item_available_items.dart';
import 'package:flutter/material.dart';
import 'package:water/widgets/search_text_field_available_items_screen.dart';

class AvailableItemsScreenDetailsLandScape extends StatelessWidget {
  AvailableItemsScreenDetailsLandScape({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          //drawer: const DrawerPreviousInvoicesScreen(),
          key: _key,
          body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SearchTextFieldAvailableItemsScreen(hintText: 'البحث عن صنف أو منتج',),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: (){
                                  customAnimatedPushNavigation(context, AvailableProductsScreen());
                                },
                                child: const WaterItemAvailableItems());
                          }),
                    ],
                  ),
                ),
                const ProductsAndPricesAvailableItemsScreen()
              ],
            ),
          ),
        );
  }
}
