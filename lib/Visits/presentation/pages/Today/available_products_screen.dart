import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/dialogs.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/available_products_screen_details.dart';

class AvailableProductsScreen extends StatelessWidget{
  const AvailableProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      menuType:  "subMenu",
      child: AvailableProductsScreenDetails(),
      screenButtons: [
        AppButtonWidget(
          asset: 'assets/images/ChCircle.png',
          text: 'انهاء الزيارة',
          onClick: () => Dialogs.showDialogFinishVisit(context),
        ),
      ],
    );
  }
}