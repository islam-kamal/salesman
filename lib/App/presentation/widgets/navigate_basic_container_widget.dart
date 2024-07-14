

import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/Clients/presentation/pages/clients_screen.dart';
import 'package:water/Dashboard/presentation/pages/dashboard_screen.dart';
import 'package:water/Profile/presentation/pages/profile_screen.dart';
import 'package:water/index.dart';
import 'package:water/widgets/trader_deal_container_item.dart';

class NavigateBasicContainer extends StatefulWidget {
  NavigateBasicContainer({super.key, this.userType = "B2C"});

  final String userType;

  @override
  State<NavigateBasicContainer> createState() => _NavigateBasicContainerState();
}

class _NavigateBasicContainerState extends State<NavigateBasicContainer> {
  int index = 0;
  List<ElementEntity> elements =[];
@override
  void initState() {
  elements = [
    ElementEntity(title: 'الرئيسية', image: 'assets/images/VectorHome.png', screenIndex:  0),
    ElementEntity(title: 'الزيارات', image: 'assets/images/VectorVisits.png', screenIndex:  1),
    ElementEntity(
        title: widget.userType == 'B2C' ? 'مرتجعات' : 'اوامر الشغل',
        image: widget.userType == 'B2C' ? 'assets/images/overView.png' : 'assets/images/IconWrapperrrrr.png',
        screenIndex:  2),
    ElementEntity(title: 'العملاء', image: 'assets/images/VectorClints.png', screenIndex:  3),
    ElementEntity(title: 'المخزن', image: 'assets/images/VectorBuild.png', screenIndex:  4),
    ElementEntity(title: 'الحساب', image: 'assets/images/Vvvectorss.png', screenIndex:  5),
  ];
    super.initState();
  }

  List<Widget> _buildScreens = [
    DashboardScreen(),
    VisitsTodayScreen(),
    ReturnOrdersScreen(),
    ClientsScreen(),
    InventoryScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: LocalizeAndTranslate.getLanguageCode() == 'en' ? TextDirection.rtl : TextDirection.ltr,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' أهلا محمود ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.014,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: elements.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.011),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              index = i;
                              print("index : ${index}");
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> _buildScreens[index]));
                            });

                          },
                          child: TraderDealContainerItem(
                            name: elements[i].title,
                            image: elements[i].image,
                            onClickStatus: elements[i].screenIndex == index,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ElementEntity {
  final String title;
  final String image;
  final int screenIndex;

  ElementEntity({required this.title, required this.image, required this.screenIndex});
}


