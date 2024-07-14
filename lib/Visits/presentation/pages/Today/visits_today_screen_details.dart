
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Profile/presentation/pages/profile_screen.dart';

import 'package:water/widgets/button.dart';
import 'package:water/widgets/google_map_container.dart';
import 'package:water/widgets/indebtedness_container.dart';
import 'package:water/widgets/market_information_container.dart';
import 'package:water/App/presentation/widgets/navigate_basic_container_widget.dart';
import 'package:water/widgets/trader_file_container.dart';
import 'package:water/widgets/transaction_details_container.dart';

class VisitsTodayDetailsScreen extends StatelessWidget{
  const VisitsTodayDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: _page(),
        button: [
          AppButtonWidget(
            asset: 'assets/images/startVisit.png',
            text: 'بدأ الزيارة',
            onClick: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));

            },
          ),
          AppButtonWidget(
            asset: 'assets/images/Route.png',
            text: 'الاتجاهات',
            onClick: (){
              double latitude = 37.7749;  // Example latitude
              double longitude = -122.4194;  // Example longitude
              launchGoogleMaps(latitude, longitude);
            },
          ),
          AppButtonWidget(
            asset: 'assets/images/phonee.png',
            text: 'الإتصال بالتاجر',
            onClick: ()=> launchUrlString("tel://21213123123"),
          ),
        ]);
  }

  void launchGoogleMaps(double latitude, double longitude) async {
    final String googleMapsUrl = "https://www.google.com/maps/dir/?api=1&destination=$latitude,$longitude";
    if (await canLaunchUrl(Uri.parse(googleMapsUrl))) {
      await launchUrl(Uri.parse(googleMapsUrl));
    } else {
      throw 'Could not launch $googleMapsUrl';
    }
  }
}

class _page extends StatelessWidget {
  const _page({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back)),
                  const Text(
                    'تفاصيل التاجر',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.008,
              ),
              const TraderFileContainer(
                traderName: 'عبدالرحمن محمد علي',
                phone: '+966 4644 4646',
                textSmallContainer: 'في زيارات اليوم',
                iconSmallContainer:  'assets/images/VerifiedCheck.png',
                color: Color(0xff0056C9),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TransactionDetailsContainer(
                      image: 'assets/images/BillList.png',
                      color: Color(0xff0056C9),
                      name: 'مبيعات',
                      price: '25,000 ر.س',
                    ),
                    TransactionDetailsContainer(
                      image: 'assets/images/Union.png',
                      color: Color(0xff5F480C),
                      name: 'مرتجعات',
                      price: '25,000 ر.س',
                    ),
                    TransactionDetailsContainer(
                      image: 'assets/images/moneyBaggg.png',
                      color: Color(0xff1D6E4F),
                      name: 'تحصيل',
                      price: '25,000 ر.س',
                    ),
                    TransactionDetailsContainer(
                      image: 'assets/images/DangerTriangle.png',
                      color: Color(0xffAF2A1A),
                      name: 'مديونية',
                      price: '25,000 ر.س',
                    ),
                  ],
                ),
              ),
              const IndebtednessContainer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.014,
              ),
              const GoogleMapContainer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.014,
              ),
              const MarketInformationContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
