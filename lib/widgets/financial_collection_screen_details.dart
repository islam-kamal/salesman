import 'package:flutter/material.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/deserved_invoices_item.dart';
import 'package:water/collection_receipit_details_screen.dart';
import 'package:water/widgets/first_container_in_financial_collection.dart';
import 'package:water/widgets/payment_method_financial_collection.dart';
import 'package:water/widgets/pill_payment_financial_collection.dart';
import 'package:water/widgets/take_photo_widget.dart';

class FinancialCollectionScreenDetails extends StatelessWidget {
  FinancialCollectionScreenDetails({super.key});


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    ListView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: (){
                                  customAnimatedPushNavigation(context, CollectionReceipitDetailsScreen());
                                },
                                child: const DeservedInvoicesItem());
                          }),
                  ],
                ),
              ),
    );
  }
}
