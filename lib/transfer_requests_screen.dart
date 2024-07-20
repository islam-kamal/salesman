import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/widgets/transfer_requests_screen_body.dart';

class TransferRequestsScreen extends StatelessWidget{
  const TransferRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: TransferRequestsScreenBody(),
        screenButtons:[
          AppButtonWidget(
            asset: 'assets/images/VectorAdddd.png',
            text: 'طلب تحويل',
            onClick: () {},
          ),
        ]
    );
  }
}