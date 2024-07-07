import 'package:flutter/material.dart';
import 'package:water/widgets/trader_deal_container_item.dart';
import 'package:water/basics/shared.dart';

class TraderDealInventoryScreen extends StatelessWidget{
  const TraderDealInventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.23,
          height: MediaQuery.of(context).size.height * 0.295,
          decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8)
          ),
          child:  Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'أهلاً محمود',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700
                ),
                ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
                const TraderDealContainerItem(
                  name: 'الرئيسية',
                   image: 'assets/images/VectorHome.png',
                   ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
               const TraderDealContainerItem(
                name: 'الزيارات',
                 image: 'assets/images/VectorVisits.png',
                 ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
               const TraderDealContainerItem(
                name: 'العملاء',
                 image: 'assets/images/VectorClints.png',
                 ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
               const TraderDealContainerItem(
                name: 'المخزن',
                 image: 'assets/images/VectorBuild.png',
                 ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
         const TraderDealContainerItem(
          name: 'الحساب',
           image: 'assets/images/Vvvectorss.png',
           ),
                      ],
                     ),
                   ),
                  ),
      ],
    );
}
}