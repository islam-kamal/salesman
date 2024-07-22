import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/available_items_screen_details.dart';

class AvailableItemsScreen extends StatelessWidget{
  const AvailableItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      MenuType:  "subMenu",
      child: AvailableItemsScreenDetails(),
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