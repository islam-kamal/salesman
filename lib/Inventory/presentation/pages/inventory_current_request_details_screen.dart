import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Inventory/presentation/pages/widgets/inventory_current_request_details_screen_body.dart';

class InventoryCurrentRequestDetailsScreen extends StatelessWidget{
  const InventoryCurrentRequestDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: InventoryCurrentRequestDetailsScreenBody(),
        screenButtons:[
          AppButtonWidget(
            asset: 'assets/images/VectorAdddd.png',
            text: 'اضف منتج',
            onClick: () {},
          ),
          AppButtonWidget(
            asset: 'assets/images/cancell.png',
            text: 'إلغاء الطلب',
            onClick: () {},
            color: kWhiteColor,
          ),
        ]
    );
  }
}