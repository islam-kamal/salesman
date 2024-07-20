import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/inventory_add_request_screen.dart';
import 'package:water/transfer_requests_screen.dart';
import 'package:water/widgets/inventory_available_products_screen_body.dart';

class InventoryAvailableProductsScreen extends StatelessWidget{
  const InventoryAvailableProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: InventoryAvailableProductsScreenBody(),
        screenButtons:[
          AppButtonWidget(
            asset: 'assets/images/VectorAdddd.png',
            text: 'طلب تحويل',
            onClick: () {
              customAnimatedPushNavigation(context, InventoryAddRequestScreen());
            },
          ),
          AppButtonWidget(
            asset: 'assets/images/fileImage.png',
            text: 'الطلبات الحالية',
            onClick: () {
              customAnimatedPushNavigation(context, const TransferRequestsScreen());
            },
            color: kWhiteColor,
          ),
        ]
    );
  }
}