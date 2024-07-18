import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/navigate_basic_container.dart';
import 'package:water/widgets/products_and_prices_inventory_add_request_screen.dart';
import 'package:water/widgets/search_text_field_available_items_screen.dart';
import 'package:water/widgets/water_item_available_items.dart';
import 'package:flutter/material.dart';

class InventoryAddRequestScreenBody extends StatelessWidget {
  InventoryAddRequestScreenBody({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          //drawer: const DrawerPreviousInvoicesScreen(),
          key: _key,
          body: Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 48),
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
                          height: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.height * 0.041
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
                                  child: const ImageIcon(AssetImage(
                                      'assets/images/Icon-Wrappppper.png')),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
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
                        NavigateBasicContainer(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.24,
                          height: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.height * 0.056
                              : MediaQuery.of(context).size.height * 0.092,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () =>
                                      Dialogs.showDialogFinishVisit(context),
                                  child: const Button(
                                    color: Colors.white,
                                    iconImage: 'assets/images/cancell.png',
                                    buttonName: 'إلغاء الطلب',
                                    textColor: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SearchTextFieldAvailableItemsScreen(
                        hintText: 'البحث عن منتج',
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const WaterItemAvailableItems();
                          }),
                    ],
                  ),
                ),
                const ProductsAndPricesInventoryAddRequestScreen()
              ],
            ),
          ),
        ));
  }
}
