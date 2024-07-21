import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/widgets/trader_details_screen_body.dart';

class TraderDetailsScreen extends StatelessWidget{
  const TraderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: TraderDetailsScreenBody(),
   /*   screenButtons: [
        AppButtonWidget(
            text: text,
            asset: asset,
            onClick: (){},
        ),
        AppButtonWidget(
          text: text,
          asset: asset,
          onClick: (){},
        ),
        AppButtonWidget(
          text: text,
          asset: asset,
          onClick: (){},
        ),
      ],*/
    );
  }
}