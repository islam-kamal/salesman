import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/previous_invoices_screen_details.dart';

class PreviousInvoicesScreen extends StatelessWidget{
  const PreviousInvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: PreviousInvoicesScreenDetails(),
      screenButtons: [
        AppButtonWidget(
          asset: 'assets/images/ChCircle.png',
          text: 'انهاء الزيارة',
          onClick: () => Dialogs.showDialogFinishVisit(context),
        ),
      ],
      MenuType:  "subMenu",
    );
  }
}