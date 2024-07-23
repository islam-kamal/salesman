import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Authentication/presentation/pages/login_screen.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Clients/presentation/pages/clients_screen.dart';
import 'package:water/Dashboard/presentation/widgets/bar_chart_sample.dart';
import 'package:water/Dashboard/presentation/widgets/linear_progress_indicator_widget.dart';
import 'package:water/Profile/presentation/pages/profile_screen.dart';
import 'package:water/widgets/transaction_details_container.dart';

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: _Page(),
      screenButtons: [
        AppButtonWidget(
          asset: 'assets/images/LogOut.png',
          text: 'تسجيل خروج',
          onClick: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));

          },
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
    return Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Container(
                color: kTransparentColor,
                child: Column(
                  children: [
                   Padding(padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width * 0.015),
                   child:  LinearProgressIndicatorWidget(),),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Container(
                     decoration: BoxDecoration(
                       color: kWhiteColor,
                       borderRadius: BorderRadius.circular(10)
                     ),
                      height: MediaQuery.of(context).size.height * 0.11,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Text(
                            'احصائيات شهر مارس',
                            style: TextStyle(
                              color: const Color(0xff0f4a3c),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TransactionDetailsContainer(
                                image: 'assets/images/BillList.png',
                                color: Color(0xff0056C9),
                                name: 'مبيعات',
                                price: '25,000 ر.س',
                                hasBorder: false,
                              ),
                              Container(height: 25,width: 1.5,color: kInactiveColor,),
                              TransactionDetailsContainer(
                                image: 'assets/images/Union.png',
                                color: Color(0xFFAC6521),
                                name: 'مرتجعات',
                                price: '25,000 ر.س',
                                hasBorder: false,

                              ),
                              Container(height: 25,width: 1.5,color: kInactiveColor,),

                              TransactionDetailsContainer(
                                image: 'assets/images/moneyBaggg.png',
                                color: Color(0xff1D6E4F),
                                name: 'تحصيل',
                                price: '25,000 ر.س',
                                hasBorder: false,

                              ),
                              Container(height: 25,width: 1.5,color: kInactiveColor,),

                              TransactionDetailsContainer(
                                image: 'assets/images/DangerTriangle.png',
                                color: Color(0xffAF2A1A),
                                name: 'مديونية',
                                price: '25,000 ر.س',
                                hasBorder: false,

                              ),
                            ],
                          )
                        ],
                      ),
                    )),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child:  BarChartSample())
                  ],
                ),
              )),
        ));
  }
}
