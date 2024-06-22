
import 'package:flutter/material.dart';

import '../../../widgets/drawer_review_product_screen.dart';
import '../widgets/app_list_widget.dart';


class AppScreen extends StatelessWidget {
  final Widget? child;
  final Widget? button;
   AppScreen({this.child, this.button});
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const DrawerReviewProductScreen(),

      body: Container(
          child: SafeArea(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 18 ,left: 18 , top: 48 ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex:6,
                          child:   child!
                      ),
                      Expanded(
                          flex: 2,
                          child:  Directionality(
                              textDirection: TextDirection.rtl,
                              child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.23,
                                height: MediaQuery.of(context).size.height * 0.041,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 11),
                                  child:  Row(
                                    children: [
                                      InkWell(
                                        onTap: () => _key.currentState!.openDrawer(),
                                        child: const ImageIcon(
                                            AssetImage('assets/images/Icon-Wrappppper.png')
                                        ),
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.01,
                                      ),
                                      const Opacity(
                                        opacity: 0.8,
                                        child: Text(
                                            'اخفاء القائمة'
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.025,
                              ),
                              const AppListWidget(),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.025,
                              ),
                              button!
                            ],
                              ))),


                    ],
                  ),

              ),
            ),
          )),
    );
  }
}
