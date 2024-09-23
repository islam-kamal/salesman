import 'package:flutter/material.dart';
import 'package:water/Dashboard/presentation/widgets/bar_chart_sample.dart';
import 'package:water/widgets/store_name_container.dart';
import 'package:water/widgets/value_pill_date_number_container.dart';
import 'package:water/widgets/visit_details_list_view_item.dart';

class ClientDetailsIndebtScreenBody extends StatelessWidget {
  const ClientDetailsIndebtScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // endDrawer: const Drawer(),
        body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(Icons.arrow_back),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.012,
                          ),
                          const Text(
                            'ملف المديونية',
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
                      const StoreNameContainer(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ),


                     /* Container(
                        width: double.infinity,
                        height: 444,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5
                          )
                        ),
                      ),*/

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child:  BarChartSample(
                            title: 'تاريخ الفواتير',
                          )
                      ),


                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ),
                      const ValuePillDateNumberContainer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.014,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: VisitDetailsListViewItem(
                                number: 33,
                                date: '23/5/2024',
                                pillType: 'مرتجع',
                                productNumber: '50 منتج',
                                productValue: '42 ر.س',
                              ),
                            );
                          }),
                    ],
                  ),
                ),
    );
  }
}
