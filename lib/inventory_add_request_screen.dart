import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/index.dart';
import 'package:water/widgets/inventory_add_request_screen_body.dart';

class InventoryAddRequestScreen extends StatelessWidget{
  const InventoryAddRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: InventoryAddRequestScreenBody(),
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