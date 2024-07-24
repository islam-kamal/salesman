import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Clients/presentation/pages/clients_screen.dart';
import 'package:water/Clients/presentation/widgets/add_client_location_screen_body.dart';

class AddClientLocationScreen extends StatelessWidget{
  const AddClientLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: AddClientLocationScreenBody(),
      menuType: "clientMenu",
      screenButtons: [
        AppButtonWidget(
          asset: 'assets/images/ChCircle.png',
          text: 'حفظ العميل',
          onClick: () {},
        ),
        AppButtonWidget(
          asset: 'assets/images/cancell.png',
          text: 'الغاء العميل',
          onClick: () {
            customAnimatedPushNavigation(context, ClientsScreen());

          },
          color: kWhiteColor,
        ),
      ],

    );
  }
}