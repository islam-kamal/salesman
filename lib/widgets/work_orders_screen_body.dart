import 'package:flutter/material.dart';
import 'package:water/index.dart';
import 'package:water/widgets/navigate_basic_container.dart';
import 'package:water/widgets/visit_type_containers.dart';
import 'package:water/widgets/visits_history_screen_container_item.dart';

class WorkOrdersScreenBody extends StatelessWidget {
  WorkOrdersScreenBody({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: const Drawer(),
        key: _key,
        body: Padding(
          padding: const EdgeInsets.only(right: 18, left: 18, top: 48),
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
                          : MediaQuery.of(context).size.height * 0.063,
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
                              onTap: () => _key.currentState!.openDrawer(),
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
                    NavigateBasicContainer(userType: 'B2B'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
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
                        'اوامر الشغل',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    const SearchTextField(hintTextField: 'البحث عن فاتورة'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    const VisitTypeContainers(
                      textFirstContainer: 'الفترة',
                      textSecondContainer: 'الحالة',
                      textThirdContainer: 'نوع الأمر',
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 2
                            : 3,
                        crossAxisSpacing: 16,
                        childAspectRatio: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 4.3 / 2
                            : 4.9 / 2,
                      ),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const OrderDetailsSaleScreen()));
                          },
                          child: const VisitsHistoryScreenContainerItem(
                            date: 'امر بيع 2313',
                            collect: '50 منتج',
                            complete: '30,000 ر.س',
                            visit: 'تم الموافقة',
                            returned: '3 ساعات',
                            store: 'اسم المتجر',
                            icon: 'assets/images/trueeStyle.png',
                            iconColor: Color(0xff1D6E4F),
                            iconProductType: 'assets/images/trueInSquare.png',
                            iconStoreName: 'assets/images/smallShop.png',
                            iconCompleted: 'assets/images/Banknote2.png',
                            iconReturned: 'assets/images/timeHistory.png',
                            iconCollected: 'assets/images/marketImage.png',
                            collectedColor: Colors.black,
                          ),
                        );
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
