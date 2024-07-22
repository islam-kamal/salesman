
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/App/presentation/widgets/navigate_basic_container_widget.dart';
import 'package:water/App/presentation/widgets/navigate_in_visit_details_container_widget.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Base/connectivity/network_indicator.dart';
import 'package:water/Base/safe_area/page_container.dart';

import '../../../widgets/drawer_review_product_screen.dart';

class AppScreen extends StatelessWidget {
  final Widget? child;
  final List<Widget>? screenButtons;
  final String MenuType;
  final bool visitDetails;


  AppScreen({this.child, this.screenButtons,this.MenuType = "mainMenu" ,
    this.visitDetails = false});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return NetworkIndicator(
      child: PageContainer(

        child: Directionality(
          textDirection: LocalizeAndTranslate.getLanguageCode() == 'ar'
              ? TextDirection.rtl
              : TextDirection.ltr,
          child: Scaffold(
            key: _key,
            drawer: const DrawerReviewProductScreen(),
            body: Container(
              child: SafeArea(
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? 8
                              : 11,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: child!,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11, vertical: 8),
                                  child: Row(
                                    textDirection:
                                    LocalizeAndTranslate.getLanguageCode() ==
                                        'en'
                                        ? TextDirection.rtl
                                        : TextDirection.ltr,
                                    children: [
                                      InkWell(
                                        onTap: () =>
                                            _key.currentState!.openDrawer(),
                                        child: const ImageIcon(
                                          AssetImage(
                                              'assets/images/Icon-Wrappppper.png'),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.01,
                                      ),
                                      const Opacity(
                                        opacity: 0.8,
                                        child: Text('اخفاء القائمة'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.025,
                              ),
                              NavigateBasicContainer(
                                menuType: MenuType,
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.025,
                              ),
                              visitDetails == false ?
                              Container(
                                decoration: BoxDecoration(
                                    color:  screenButtons!.length ==0 ? kTransparentColor : kWhiteColor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: screenButtons!.length ==0 ? kTransparentColor : kInactiveColor)
                                ),
                                padding: EdgeInsets.all(5),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: screenButtons!.length,
                                  itemBuilder: (context, index) {
                                    return  screenButtons![index];
                                  },
                                ),
                              )
                                  : NavigateInVisitDetailsContainer(
                              )

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

