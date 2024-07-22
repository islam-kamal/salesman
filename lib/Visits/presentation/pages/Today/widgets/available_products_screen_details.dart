import 'package:flutter/material.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/drawer_available_products_screen.dart';
import 'package:water/widgets/products_and_prices_available_products_screen.dart';
import 'package:water/widgets/search_text_field_available_products_screen.dart';
import 'package:water/widgets/store_deal_container_widget.dart';
import 'package:water/widgets/water_item_available_products.dart';

class AvailableProductsScreenDetails extends StatelessWidget {
  AvailableProductsScreenDetails({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: const DrawerAvailableProductsScreen(),
          key: _key,
          body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SearchTextFieldAvailableProductsScreen(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const WaterItemAvailableProducts();
                          }),
                    ],
                  ),
                ),
                const ProductsAndPricesAvailableProductsScreen()
              ],
            ),
          ),
        );
  }
}
