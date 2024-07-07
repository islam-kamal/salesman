import 'package:flutter/material.dart';
import 'package:water/widgets/drawer_invoices_details_screen.dart';
import 'package:water/widgets/finish_button_container_widget.dart';
import 'package:water/widgets/image_number_product_price_container_invoices_details.dart';
import 'package:water/widgets/products_and_prices_invoices_details_screen.dart';
import 'package:water/widgets/search_text_field_invoices_details_screen.dart';
import 'package:water/widgets/store_deal_container_widget.dart';
import 'package:water/widgets/water_item_invoices_details.dart';
import 'package:water/basics/shared.dart';

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
          width: MediaQuery.of(context).size.width * 0.24,
          height: MediaQuery.of(context).orientation == Orientation.portrait ?
          MediaQuery.of(context).size.height * 0.041
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
                  child: const ImageIcon(
                      AssetImage('assets/images/Icon-Wrappppper.png')),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                const Opacity(
                  opacity: 0.8,
                  child: Text('اخفاء القائمة'),
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
                  const FinishButtonContainer(),
                ],
              )),
           
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
       )
       );
  }
}


