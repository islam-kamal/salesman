import 'package:flutter/material.dart';
import 'package:water/review_product_screen.dart';
import 'package:water/widgets/drawer_home_screen.dart';
import 'package:water/widgets/finish_button_widget.dart';
import 'package:water/widgets/search_text_field_widget.dart';
import 'package:water/widgets/trader_deal_container.dart';
import 'package:water/widgets/water_item_widget.dart';

class HomeScreenDetails extends StatelessWidget{
  HomeScreenDetails({super.key});

final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
        drawer: const DrawerHomeScreen(),
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
                  const TraderDealContainer(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  const FinishButton(),
                ],
              )),
           
                Expanded(
                  flex: 3,
                child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const SearchTextField(),
                //  SizedBox(
                //     height: MediaQuery.of(context).size.height * 0.018,
                //   ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context , index){
                      return const WaterItem();
                    }
                    ),
                ],
              ),
                ),
               Expanded(
                flex: 2,
                child:   Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,

                children: <Widget>[
                  Container(
                width: MediaQuery.of(context).size.width * 0.245,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(8)
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11 , vertical: 4),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'امر بيع',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                const Text(
                                'لأسم التاجر',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300
                                ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.008,
                                ),
                                const Opacity(
                                  opacity: 0.4,
                                  child: Text(
                                  'المنتج',
                                  style: TextStyle(
                                  fontSize: 16,
                                ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  4*مياه',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  2*مياه',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  25*مياه',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  2*مياه',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  ),
                                ),
                            ],
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '',
                              ),
                              Text(
                                '',
                              ),
                              Text(
                                '',
                              ),
                              Opacity(
                                opacity: 0.7,
                                child: Text(
                                  'المبلغ',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 186, 180, 180),
                         thickness: 0.5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Opacity(
                            opacity: 0.7,
                            child: Text(
                              'الاجمالي',
                              style: TextStyle(
                                fontSize: 18
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.9,
                            child: Text(
                              '42ر.س',
                              style: TextStyle(
                                fontSize: 17
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.012,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const ReviewProductScreen())
                            );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.23,
                          height: MediaQuery.of(context).size.height * 0.041,
                          decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.blue,
                            width: 0.5,
                                        ),
                                        borderRadius: BorderRadius.circular(4)
                                      ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 18),
                           child: Row(
                            children: [
                              Image.asset(
                                'assets/images/CheckCircle.png',
                                color: Colors.blue
                                ),
                                SizedBox(
                                width: MediaQuery.of(context).size.width * 0.006,
                              ),
                              const Text(
                                'مراجعة المنتجات',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                           ),
                         ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                ],
              ),) ],
          ),
        ),
       )
       );
  }
}

