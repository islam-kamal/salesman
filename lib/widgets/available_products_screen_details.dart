import 'package:flutter/material.dart';
import 'package:water/widgets/finish_button_container_widget.dart';
import 'package:water/widgets/hide_list_container_widget.dart';
import 'package:water/widgets/products_and_prices_available_products_screen.dart';
import 'package:water/widgets/search_text_field_available_products_screen.dart';
import 'package:water/widgets/store_deal_container_widget.dart';
import 'package:water/widgets/water_item_available_products.dart';
import 'package:water/basics/shared.dart';


class AvailableProductsScreenDetails extends StatelessWidget{
  AvailableProductsScreenDetails({super.key});

final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
        //drawer: const DrawerPreviousInvoicesScreen(),
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
                  HideListContainer(),
                  SizedBox(
                    height: Shared.height * 0.025,
                  ),
                  const StoreDealContainer(),
                  SizedBox(
                    height: Shared.height * 0.025,
                  ),
                  const FinishButtonContainer(),
                ],
              )),
                Expanded(
                  flex: 3,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const SearchTextFieldAvailableProductsScreen(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context , index){
                      return const WaterItemAvailableProducts();
                    }
                    ),
                ],
              ),
                ),
               const ProductsAndPricesAvailableProductsScreen()
               ],
          ),
        ),
       )
       );
  }
}


