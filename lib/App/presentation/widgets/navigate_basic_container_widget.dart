import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/App/presentation/widgets/client_menu_container_item.dart';
import 'package:water/Base/common/shared.dart';
import 'package:water/Clients/presentation/pages/add_merchant_information_screen.dart';
import 'package:water/Clients/presentation/pages/clients_screen.dart';
import 'package:water/Dashboard/presentation/pages/dashboard_screen.dart';
import 'package:water/Inventory/presentation/pages/inventory_available_products_screen.dart';
import 'package:water/Profile/presentation/pages/profile_screen.dart';
import 'package:water/Visits/presentation/pages/Today/previous_invoices_screen.dart';
import 'package:water/Visits/presentation/pages/Today/visits_today_screen.dart';
import 'package:water/Visits/presentation/pages/Today/available_items_screen.dart';
import 'package:water/index.dart';
import 'package:water/returns/presentation/pages/return_orders_screen.dart';
import 'package:water/App/presentation/widgets/trader_deal_container_item.dart';

class NavigateBasicContainer extends StatefulWidget {
  NavigateBasicContainer({super.key,this.menuType="mainMenu"});
final String menuType;

  @override
  State<NavigateBasicContainer> createState() => _NavigateBasicContainerState();
}

class _NavigateBasicContainerState extends State<NavigateBasicContainer> {
  int index = 0;
  List<MenuElement> MainMenu =[];
  List<MenuElement> subMenu =[];
  List<ClientMenuElement> clientMenu =[];

  List<Widget> _mainMenuBuildScreens = [];
  List<Widget> _subMenuBuildScreens = [];
  List<Widget> _clientMenuBuildScreens = [];
  @override
  void initState() {

    switch(widget.menuType){
      case 'mainMenu':
        MainMenu = [
          MenuElement(title: 'الرئيسية', image: 'assets/images/VectorHome.png', screenIndex:  0),
          MenuElement(title: 'الزيارات', image: 'assets/images/VectorVisits.png', screenIndex:  1),
          MenuElement(
              title: Shared.userType == 'B2C' ? 'مرتجعات' : 'اوامر الشغل',
              image: Shared.userType == 'B2C' ? 'assets/images/overView.png' : 'assets/images/IconWrapperrrrr.png',
              screenIndex:  2),
          MenuElement(title: 'العملاء', image: 'assets/images/VectorClints.png', screenIndex:  3),
          MenuElement(title: 'المخزن', image: 'assets/images/VectorBuild.png', screenIndex:  4),
          MenuElement(title: 'الحساب', image: 'assets/images/Vvvectorss.png', screenIndex:  5),
        ];
        _mainMenuBuildScreens = [
          DashboardScreen(),
          VisitsTodayScreen(),
          Shared.userType == 'B2C' ?  ReturnOrdersScreen() : WorkOrdersScreen(),
          ClientsScreen(),
          InventoryAvailableProductsScreen(),
          ProfileScreen()
        ];
        break;
      case 'subMenu':
        subMenu = [
          MenuElement(title: 'بيع', image: 'assets/images/IconWrapperrrrr.png', screenIndex:  0),
          MenuElement(title: 'مرتجع جيد', image: 'assets/images/RestartCircle.png', screenIndex:  1),
          MenuElement(title: 'مرتجع سيء', image: 'assets/images/badReturned.png', screenIndex:  2),
          MenuElement(title: 'تحصيل', image: 'assets/images/MoneyBag.png', screenIndex:  3),
          MenuElement(title: 'صور', image: 'assets/images/camera.png', screenIndex:  4),
        ];
        _subMenuBuildScreens = [
          AvailableItemsScreen(),
          PreviousInvoicesScreen(),
          PreviousInvoicesScreen(),
          FinancialCollectionScreen(),
          AttachPhotosScreen(),
        ];
        break;
      case 'clientMenu':
        clientMenu = [
          ClientMenuElement(title: "التاجر",
              image: 'assets/images/User.png',
              screenIndex: 0,
              primaryImage: 'assets/images/IconIndicator.png',
              secondary: 'assets/images/IconMerchant.png',),
          ClientMenuElement(title: "المتجر",
            image: 'assets/images/Shop.png',
            screenIndex: 1,
            primaryImage: 'assets/images/IconIndicator.png',
            secondary: 'assets/images/IconMerchant.png',),
          ClientMenuElement(title: "العنوان",
            image: 'assets/images/markk.png',
            screenIndex: 2,
            primaryImage: 'assets/images/IconIndicator.png',
            secondary: 'assets/images/IconMerchant.png',),

        ];
        _clientMenuBuildScreens = [
          AddMerchantInformationScreen(),
          AddStoreInformationScreen(),
          AddClientLocationScreen(),

        ];
        break;
    }


    super.initState();
  }
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
              child: menuTypeDesign(widget.menuType),
            ),
          ),
        ],
      ),
    );
  }

  Widget menuTypeDesign(String menuType){

    switch(widget.menuType){
      case 'mainMenu':
        return Column(
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
              itemCount: MainMenu.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.011),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        index = i;
                        print("index : ${index}");
                       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> _mainMenuBuildScreens[index]));
                      });
                      navigateToScreen(context,index,_mainMenuBuildScreens);
                    },
                    child: TraderDealContainerItem(
                      name: MainMenu[i].title,
                      image: MainMenu[i].image,
                      onClickStatus: MainMenu[i].screenIndex == index,
                    ),
                  ),
                );
              },
            )
            ]);
        break;
      case 'subMenu':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
          children: [
            const Text(
              'بدأ المعاملة مع ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const Text(
              ' اسم المتجر',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.014,
            ),
            ListView.builder(
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
               /*         Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context)=>  _subMenuBuildScreens[index]
                              ));*/
                      });
                      navigateToScreen(context,index,_subMenuBuildScreens);
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
          ],
        );
        break;
      case 'clientMenu':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'اضافة عميل جديد ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Color(0xFF25292E)),
                  ),

                  Padding(padding: EdgeInsets.symmetric(vertical: 2),child: const Text(
                    'ادخل معلومات العميل',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300,color: Color(0xFF25292E)),
                  ),)
                ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.014,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: clientMenu.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.011),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        index = i;
                        print("index : ${index}");
              /*          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context)=>  _clientMenuBuildScreens[index]
                        ));*/
                      });
                      navigateToScreen(context,index,_clientMenuBuildScreens);
                    },
                    child: ClientMenuContainerItem(
                      name: clientMenu[i].title,
                      image: clientMenu[i].image,
                      onClickStatus: clientMenu[i].screenIndex == index,
                      primaryImage: clientMenu[i].primaryImage,
                      secondaryImage: clientMenu[i].secondary,
                    ),
                  ),
                );
              },
            )
          ],
        );

        break;
      default:
        return Container();
    }
  }
}

class MenuElement {
  final String title;
  final String image;
  final int screenIndex;

  MenuElement({required this.title, required this.image, required this.screenIndex});
}

class ClientMenuElement {
  final String title;
  final String image;
  final int screenIndex;
  final String primaryImage;
  final String secondary;


  ClientMenuElement({required this.title, required this.image,
    required this.screenIndex,required this.primaryImage,required this.secondary});
}

void navigateToScreen(BuildContext context , int index, List<Widget> screens) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screens[index],
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,

        );
      },
    ),
  );
}

