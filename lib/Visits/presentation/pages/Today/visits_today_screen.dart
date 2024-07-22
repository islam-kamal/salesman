import 'package:flutter/material.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Clients/presentation/pages/widgets/registered_customers_screen_container_item.dart';
import 'package:water/Visits/presentation/pages/History/visits_history_screen.dart';
import '../../../../App/presentation/pages/app_screen.dart';
import '../../../../App/presentation/widgets/app_home_button_widget.dart';
import '../../../../Profile/presentation/pages/profile_screen.dart';

class VisitsTodayScreen extends StatelessWidget{
  const VisitsTodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: _page(),
      screenButtons: [
        AppButtonWidget(
          asset: 'assets/images/add.png',
          text: ' اضافة زيارة',
          onClick: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
          },
        ),
        AppButtonWidget(
          asset: 'assets/images/timeHistory.png',
          text: ' تاريخ الزيارات',
          onClick: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> VisitsHistoryScreen()));
          },
          color: kWhiteColor,
        ),
      ]);
  }
}

class _page extends StatelessWidget {
  _page({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: _key,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'زيارات اليوم',
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
                crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: MediaQuery.of(context).orientation == Orientation.portrait ? 5.1 / 2 : 4.5 / 2,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return const RegisteredCustomersScreenContainerItem(
                  storeName: 'اسم المتجر',
                  sales: '30,000 مبيعات شهرية',
                  distance: 'يبعد 232 ك.م',
                  money: '15,000 مديونية',
                );
              },
            )


          ],
        ),

      ),
    );
  }
}
