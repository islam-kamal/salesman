import 'package:flutter/material.dart';
import 'package:water/invoices_details_screen.dart';
import 'package:water/basics/shared.dart';

class WaterItemPreviousInvoices extends StatelessWidget{
  const WaterItemPreviousInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const InvoicesDetailsScreen(),
                ),
                );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).orientation == Orientation.portrait ?
               MediaQuery.of(context).size.height * 0.075
               : MediaQuery.of(context).size.height * 0.125,
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'مبيعات 500 ر.س',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                          color: Color.fromARGB(255, 247, 245, 245),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(4)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/marketImage.png',
                                  width: MediaQuery.of(context).size.width * 0.024,
                                  ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.002,
                                ),
                                const Text(
                                  '50 منتج',
                                  style: TextStyle(
                                    color: Color(0xff0056C9),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top: 5),
                       child: Row(
                            children: [
                              Image.asset('assets/images/VectorSvsds.png'),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.008,
                              ),
                              const Text(
                                'فاتورة رقم 123414',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300
                                ),
                              ),
                            ],
                          ),
                     ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Image.asset('assets/images/VectorPkoik.png'),
                              SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008,
                            ),
                              const Text(
                                'اصدار بتاريخ 21 / 8 / 2024',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300
                                ),
                              ),
                            ],
                          ),
                        ),
                  ],
                ),
              )
            ),
          ),
        ),
      ],
    );
  }
}


