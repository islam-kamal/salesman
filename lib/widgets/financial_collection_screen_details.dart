import 'package:flutter/material.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/deserved_invoices_item.dart';
import 'package:water/widgets/first_container_in_financial_collection.dart';
import 'package:water/widgets/payment_method_financial_collection.dart';
import 'package:water/widgets/pill_payment_financial_collection.dart';
import 'package:water/widgets/store_deal_container_widget.dart';
import 'package:water/widgets/take_photo_widget.dart';

class FinancialCollectionScreenDetails extends StatelessWidget {
  FinancialCollectionScreenDetails({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        //drawer: const DrawerReviewProductScreen(),
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
                                child: Text('اخفاء القائمة'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      const StoreDealContainer(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.24,
                        height: MediaQuery.of(context).orientation == Orientation.portrait ?
                             MediaQuery.of(context).size.height * 0.056
                            : MediaQuery.of(context).size.height * 0.092,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () =>
                                    Dialogs.showDialogFinishVisit(context),
                                child: const Button(
                                  color: Colors.black,
                                  iconImage: 'assets/images/ChCircle.png',
                                  buttonName: 'انهاء الزيارة',
                                  textColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FirstContainerInFinancialCollection(),
                    const PaymentMethodFinancialCollection(),
                    const TakePhoto(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.011,
                    ),
                    const PillPaymentFinancialCollection(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.011,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.255,
                          child: const Divider(
                            thickness: 0.8,
                            color: Color(0xffDCDFE3),
                          ),
                        ),
                        const Text(
                          'الفواتير المستحقة',
                          style: TextStyle(
                            color: Color(0xff758195),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.255,
                          child: const Divider(
                            thickness: 0.8,
                            color: Color(0xffDCDFE3),
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const DeservedInvoicesItem();
                          }),
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
