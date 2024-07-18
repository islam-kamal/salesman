import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Clients/presentation/widgets/registered_customers_screen_container_item.dart';

import '../../../App/presentation/pages/app_screen.dart';
import '../../../App/presentation/widgets/app_home_button_widget.dart';

class ClientsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: _Page(),
      screenButtons:[
        AppButtonWidget(
          asset: 'assets/images/add.png',
          text: 'اضافة عميل',
          onClick: () {},
        ),
        AppButtonWidget(
          asset: 'assets/images/add.png',
          text: 'طلبات اضافة',
          onClick: () {},
          color: kWhiteColor,
        ),
      ]
    );
  }
}

class _Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PageState();
  }
}

class _PageState extends State<_Page> {
  @override
  Widget build(BuildContext context) {
    return   Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
    body:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'العملاء المسجلين',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.008,
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).orientation ==
                  Orientation.portrait
                  ? 2
                  : 3,
              crossAxisSpacing:
              MediaQuery.of(context).orientation ==
                  Orientation.portrait
                  ? 16
                  : 11,
              childAspectRatio:
              MediaQuery.of(context).orientation ==
                  Orientation.portrait
                  ? 4.3 / 2
                  : 5.2 / 2),
          itemCount: 8,
          itemBuilder: (context, index) {
            return const RegisteredCustomersScreenContainerItem(
              storeName: 'اسم المتجر',
              sales: '30,000 مبيعات شهرية',
              distance: 'يبعد 232 ك.م',
              money: '15,000 مديونية',
            );
          },
        ),
      ],
    ),
    )
    );
  }
}
