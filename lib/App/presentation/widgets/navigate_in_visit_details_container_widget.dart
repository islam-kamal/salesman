import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/Visits/presentation/pages/History/visit_details_screen_collected.dart';
import 'package:water/Visits/presentation/pages/Today/available_items_screen.dart';
import 'package:water/Visits/presentation/pages/Today/previous_invoices_screen.dart';
import 'package:water/index.dart';
import 'package:water/widgets/trader_deal_container_item.dart';

class NavigateInVisitDetailsContainer extends StatefulWidget {
  NavigateInVisitDetailsContainer({super.key, this.userType = "B2C",this.subMenu=false});
  final bool subMenu;
  final String userType;

  @override
  State<NavigateInVisitDetailsContainer> createState() => _NavigateBasicContainerState();
}

class _NavigateBasicContainerState extends State<NavigateInVisitDetailsContainer> {
  int index = 0;
  List<ElementEntity> MainMenu =[];
  List<ElementEntity> subMenu =[];

  @override
  void initState() {
    if(widget.subMenu){
      subMenu = [
        ElementEntity(title: 'بيع', image: 'assets/images/IconWrapperrrrr.png', screenIndex:  0),
        ElementEntity(title: 'مرتجع جيد', image: 'assets/images/RestartCircle.png', screenIndex:  1),
        ElementEntity(title: 'مرتجع سيء', image: 'assets/images/badReturned.png', screenIndex:  2),
        ElementEntity(title: 'تحصيل', image: 'assets/images/MoneyBag.png', screenIndex:  3),
        ElementEntity(title: 'صور', image: 'assets/images/camera.png', screenIndex:  4),
      ];
    }else{
      MainMenu = [
        ElementEntity(title: 'نظرة عامة', image: 'assets/images/overView.png', screenIndex:  0),
        ElementEntity(title: 'المبيعات', image: 'assets/images/Shop.png', screenIndex:  1),
        ElementEntity(title: 'المرتجعات', image: 'assets/images/RestartCircle.png', screenIndex:  2),
        ElementEntity(title: 'تحصيل', image: 'assets/images/MoneyBag.png', screenIndex:  3),
      ];
    }

    super.initState();
  }

  List<Widget> _mainMenuBuildScreens = [
    VisitDetailsScreenPublic(),
    VisitDetailsScreenSales(),
    VisitDetailsScreenReturned(),
    VisitDetailsScreenCollected(),
  ];
  List<Widget> _subMenuBuildScreens = [
    AvailableItemsScreen(),
    PreviousInvoicesScreen(),
    PreviousInvoicesScreen(),
    FinancialCollectionScreen(),
    AttachPhotosScreen(),
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
                  widget.subMenu ? const Column(
                    children: [
                       Text(
                        'بدأ المعاملة مع ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                       Text(
                        ' اسم المتجر',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                      : const Text(
                    ' تفاصيل الزيارة ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.014,
                  ),
                  widget.subMenu ? ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: subMenu.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.011),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              index = i;
                              print("index : ${index}");
                              Navigator.pushReplacement(context, MaterialPageRoute(
                                  builder: (context)=> widget.subMenu ? _subMenuBuildScreens[index]
                                      : _mainMenuBuildScreens[index]));
                            });

                          },
                          child: TraderDealContainerItem(
                            name: subMenu[i].title,
                            image: subMenu[i].image,
                            onClickStatus: subMenu[i].screenIndex == index,
                          ),
                        ),
                      );
                    },
                  )
                      : ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: MainMenu.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.011),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              index = i;
                              print("index : ${index}");
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> _mainMenuBuildScreens[index]));
                            });

                          },
                          child: TraderDealContainerItem(
                            name: MainMenu[i].title,
                            image: MainMenu[i].image,
                            onClickStatus: MainMenu[i].screenIndex == index,
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


