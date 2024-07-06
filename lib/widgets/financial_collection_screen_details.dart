import 'package:flutter/material.dart';
import 'package:water/widgets/finish_button_container_widget.dart';
import 'package:water/widgets/first_container_in_financial_collection.dart';
import 'package:water/widgets/hide_list_container_widget.dart';
import 'package:water/widgets/payment_method_financial_collection.dart';
import 'package:water/widgets/pill_payment_financial_collection.dart';
import 'package:water/widgets/store_deal_container_widget.dart';
import 'package:water/widgets/take_photo_widget.dart';
import 'package:water/basics/shared.dart';

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
                    HideListContainer(),
                    SizedBox(
                      height: Shared.height * 0.025,
                    ),
                    const StoreDealContainer(),
                    SizedBox(
                      height: Shared.height * 0.025,
                    ),
                    const FinishButtonContainer(),
                  ],
                ),
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
                      height: Shared.height * 0.011,
                    ),
                    const PillPaymentFinancialCollection(),
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
