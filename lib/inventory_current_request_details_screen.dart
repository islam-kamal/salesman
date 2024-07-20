import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/widgets/inventory_current_request_details_screen_body.dart';

class InventoryCurrentRequestDetailsScreen extends StatelessWidget{
  const InventoryCurrentRequestDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: InventoryCurrentRequestDetailsScreenBody(),
        screenButtons:[
          AppButtonWidget(
            asset: 'assets/images/add.png',
            text: 'اضافة عميل',
            onClick: () {},
          ),
          AppButtonWidget(
            asset: 'assets/images/addWithoutBorder.png',
            text: 'طلبات اضافة',
            onClick: () {},
            color: kWhiteColor,
          ),
        ]
    );
  }
}