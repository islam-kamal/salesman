import 'package:flutter/material.dart';
import '../../../../App/presentation/pages/app_screen.dart';
import '../../../../App/presentation/widgets/app_home_button_widget.dart';
import '../../../../Profile/presentation/pages/profile_screen.dart';
import 'package:water/widgets/registered_customers_screen_container_item.dart';

class VisitsTodayScreen extends StatelessWidget{
  const VisitsTodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: _page(),
      button: [
        AppButtonWidget(
          asset: 'assets/images/add.png',
          text: ' اضافة زيارة',
          onClick: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));

          },
        ),
        AppButtonWidget(
          asset: 'assets/images/timeHistory.png',
          text: ' تاريخ الزيارات',
          onClick: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));

          },
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
                childAspectRatio: MediaQuery.of(context).orientation == Orientation.portrait ? 3.7 / 2 : 4.5 / 2,
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
