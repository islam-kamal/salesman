import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/financial_collection_screen_details.dart';

class FinancialCollectionScreen extends StatelessWidget{
  const FinancialCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      subMenu: true,
      child: FinancialCollectionScreenDetails(),
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