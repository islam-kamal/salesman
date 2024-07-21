import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/review_product_screen_details.dart';

class ReviewProductScreen extends StatelessWidget{
  const ReviewProductScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return AppScreen(
      subMenu: true,
      child: ReviewProductScreenDetails(),
      screenButtons: [
        AppButtonWidget(
          asset: 'assets/images/VectorAdddd.png',
          text: 'انهاء الزيارة',
          onClick: () => Dialogs.showDialogFinishVisit(context),
        ),
      ],
    );  }
}