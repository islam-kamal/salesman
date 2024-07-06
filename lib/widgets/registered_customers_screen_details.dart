import 'package:flutter/material.dart';
import 'package:water/widgets/finish_button_registered_customers_screen.dart';
import 'package:water/widgets/registered_customers_screen_container_item.dart';
import 'package:water/widgets/trader_deal_registered_customers_screen.dart';
import 'package:water/basics/shared.dart';

class RegisteredCustomersScreenDetails extends StatelessWidget{
  RegisteredCustomersScreenDetails({super.key});

final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
        drawer: const Drawer(),
        key: _key,
        body: Padding(
          padding: const EdgeInsets.only(right: 18 ,left: 18 , top: 48 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    width: Shared.width * 0.23,
                   height: Shared.height * 0.041,
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
                     child: Row(
                           children: [
                            InkWell(
                              onTap: () => _key.currentState!.openDrawer(),
                              child: const ImageIcon(
                                AssetImage('assets/images/Icon-Wrappppper.png')
                              ),
                            ),
                            SizedBox(
                              width: Shared.width * 0.01,
                            ),
                          const Opacity(
                            opacity: 0.8,
                              child: Text(
                                'اخفاء القائمة',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300
                                ),
                                ),
                            ),
                           ],
                     ),
                   ),
                  ),
                  SizedBox(
                    height: Shared.height * 0.025,
                  ),
                  const TraderDealRegisteredCustomersScreen(),
                  SizedBox(
                    height: Shared.height * 0.025,
                  ),
                  const FinishButtonRegisteredCustomersScreen(),
                ],
              ),
              ),
                  Expanded(
                flex: 5,
                  child: Column(
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
                        height: Shared.height * 0.008,
                      ),
                      GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        childAspectRatio: 4.3/2
                        ),
                        itemCount: 8,
                     itemBuilder: (context , index){
                      return const RegisteredCustomersScreenContainerItem();
                     },
                    ),
                    ],
                  ),
                ),
            ],
          ),
        ),
       ),
    );
  }
}