import 'package:flutter/material.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/drawer_invoices_details_screen.dart';
import 'package:water/widgets/image_number_product_price_container_invoices_details.dart';
import 'package:water/widgets/products_and_prices_invoices_details_screen.dart';
import 'package:water/widgets/search_text_field_invoices_details_screen.dart';
import 'package:water/widgets/store_deal_container_widget.dart';
import 'package:water/widgets/water_item_invoices_details.dart';

class InvoicesDetailsScreenBody extends StatelessWidget{
  InvoicesDetailsScreenBody({super.key});

final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
         drawer: const DrawerInvoicesDetailsScreen(),
        key: _key,
        body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                 Expanded(
                  flex: 3,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const SearchTextFieldInvoicesDetailsScreen(),
                 const ImageNumberProductPriceContainerInvoicesDetails(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context , index){
                      return const WaterItemInvoicesDetails();
                    }
                    ),
                ],
              ),
                ),
               const ProductsAndPricesInvoicesDetailsScreen()
               ],
          ),
        ),
       );
  }
}


