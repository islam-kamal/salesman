import 'package:flutter/material.dart';
import 'package:water/widgets/finish_button_sold_products_screen.dart';
import 'package:water/widgets/image_number_product_price_container_sold_products.dart';
import 'package:water/widgets/product_return_drawer.dart';
import 'package:water/widgets/products_and_prices_sold_products.dart';
import 'package:water/widgets/search_text_field_sold_products_screen.dart';
import 'package:water/widgets/trader_deal_container_sold_products_screen.dart';
import 'package:water/widgets/water_item_sold_products.dart';

class SoldProductsScreenDetails extends StatelessWidget{
  SoldProductsScreenDetails({super.key});

final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
        drawer: const ProductReturnDrawer(),
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
                    width: MediaQuery.of(context).size.width * 0.23,
                   height: MediaQuery.of(context).size.height * 0.041,
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
                     child:  Row(
                           children: [
                            InkWell(
                              onTap: () => _key.currentState!.openDrawer(),
                              child: const ImageIcon(
                                AssetImage('assets/images/Icon-Wrappppper.png')
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
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
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  const TraderDealContainerSoldProductsScreen(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  const FinishButtonSoldProductsScreen(),
                ],
              )),
           
                Expanded(
                  flex: 3,
                child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const SearchTextFieldSoldProductsScreen(),
                 SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                const ImageNumberProductPriceContainerSoldProducts(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context , index){
                      return const WaterItemSoldProducts();
                    }
                    ),
                ],
              ),
                ),
               const ProductsAndPricesSoldProducts()
               ],
          ),
        ),
       )
       );
  }
}


