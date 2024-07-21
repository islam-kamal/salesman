import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Inventory/presentation/pages/inventory_available_products_screen.dart';
import 'package:water/Inventory/presentation/pages/widgets/inventory_second_add_request_screen_body.dart';

class InventorySecondAddRequestScreen extends StatelessWidget{
  const InventorySecondAddRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: InventorySecondAddRequestScreenBody(),
      screenButtons:[
      AppButtonWidget(
      asset: 'assets/images/addWithoutBorder.png',
      text: 'إلغاء الطلب',
      onClick: () {
        customAnimatedPushNavigation(context, InventoryAvailableProductsScreen());
      },
      color: kWhiteColor,
    ),
    ]
    );
  }
}