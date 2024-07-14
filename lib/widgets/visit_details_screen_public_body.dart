import 'package:flutter/material.dart';
import 'package:water/widgets/google_map_container.dart';
import 'package:water/App/presentation/widgets/navigate_basic_container_widget.dart';
import 'package:water/widgets/public_information_container.dart';
import 'package:water/widgets/transaction_details_container.dart';
import 'package:water/widgets/value_pill_date_number_container.dart';
import 'package:water/widgets/visit_details_container.dart';
import 'package:water/widgets/visit_details_list_view_item.dart';
import 'package:water/widgets/visit_details_market_information_container.dart';

class VisitDetailsScreenPublicBody extends StatelessWidget {
  const VisitDetailsScreenPublicBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // drawer: const Drawer(),
        body: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18,  top: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.041
                          : MediaQuery.of(context).size.height * 0.052,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const ImageIcon(AssetImage(
                                  'assets/images/Icon-Wrappppper.png')),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            const Opacity(
                              opacity: 0.8,
                              child: Text(
                                'اخفاء القائمة',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    NavigateBasicContainer(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    const VisitDetailsContainer(),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_back)),
                          const Text(
                            'تفاصيل الزيارة',
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
                      const PublicInformationContainer(
                        name: 'عبدالرحمن محمد علي',
                        phone: '+966 4644 4646',
                        date: '23 / 5 / 2024',
                        time: '5:30 مساءً',
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.014,
                      ),
                      const GoogleMapContainer(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.014,
                      ),
                      const VisitDetailsMarketInformationContainer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
