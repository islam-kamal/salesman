import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/shared.dart';
import 'package:water/Base/common/shared_preference_manger.dart';
import 'package:water/Visits/data/models/category_model.dart';
import 'package:water/Visits/presentation/pages/Today/available_products_screen.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/products_and_prices_available_items_screen.dart';
import '../../../../../widgets/water_item_available_items.dart';
import 'package:flutter/material.dart';
import 'package:water/widgets/search_text_field_available_items_screen.dart';

class AvailableItemsScreenDetailsLandScape extends StatelessWidget {
  List<CategoryData>? categories;
  AvailableItemsScreenDetailsLandScape({super.key,this.categories});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      Container(
                        height: Shared.height,
                        child: ListView.builder(
                            shrinkWrap: true,
                            // physics: const NeverScrollableScrollPhysics(),
                            itemCount: categories?.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                  onTap: (){
                                    sharedPreferenceManager.writeData(CachingKey.Category_ID, categories![index].id.toString());

                                    customAnimatedPushNavigation(context, AvailableProductsScreen(
                                      categoryData: categories![index]
                                    ));
                                  },
                                  child:  CategoriesWidget(
                                    categoryData: categories![index],
                                  ));
                            }),
                      ),
                    ],
                  ),
                ),
                const ProductsAndPricesAvailableItemsScreen()
              ],

        );
  }
}
