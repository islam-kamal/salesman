
import 'package:flutter/material.dart';

class WaterItemPreviousInvoices extends StatelessWidget{
  const WaterItemPreviousInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.08,
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
                        'اجمالي 50 منتج',
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
                              Image.asset('assets/images/VectooorAsd.png'),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.008,
                              ),
                              const Text(
                                'تم سداد 50% ',
                                style: TextStyle(
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
                            Text(
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
                            Text(
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
      ],
    );
  }
}



// Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 10),
//               child: Row(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                    Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,

//                     children: [
//                        const Padding(
//                         padding: EdgeInsets.symmetric(vertical: 5),
//                         child: Text(
//                           'اجمالي 50 منتج',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w500
//                           ),
//                         ),
//                       ),
//                     Padding(padding: EdgeInsets.symmetric(horizontal:5 ),
                    // child: Container(
                    // //  width: MediaQuery.of(context).size.width * 0.025,
                    //   //height: MediaQuery.of(context).size.height * 0.085,
                    //   decoration: BoxDecoration(
                    //   color: Colors.blue,
                    //   border: Border.all(
                    //     color: Colors.grey,
                    //     width: 0.5,
                    //     ),
                    //     borderRadius: BorderRadius.circular(8)
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       Image.asset('assets/images/VectorSvsds.png'),
                    //       SizedBox(
                    //         width: MediaQuery.of(context).size.width * 0.008,
                    //       ),
                    //       const Text(
                    //         'فاتورة رقم 4',
                    //         style: TextStyle(
                    //           fontSize: 14,
                    //           fontWeight: FontWeight.w300
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
//                     )
//                    ],
//                    ),
                    //  Row(
                    //     children: [
                    //       Image.asset('assets/images/VectorSvsds.png'),
                    //       SizedBox(
                    //         width: MediaQuery.of(context).size.width * 0.008,
                    //       ),
                    //       Text(
                    //         'فاتورة رقم 123414',
                    //         style: TextStyle(
                    //           fontSize: 14,
                    //           fontWeight: FontWeight.w300
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    //   Padding(
                    //     padding: const EdgeInsets.symmetric(vertical: 5),
                    //     child: Row(
                    //       children: [
                    //         Image.asset('assets/images/VectorPkoik.png'),
                    //         SizedBox(
                    //         width: MediaQuery.of(context).size.width * 0.008,
                    //       ),
                    //         Text(
                    //           'اصدار بتاريخ 21 / 8 / 2024',
                    //           style: TextStyle(
                    //             fontSize: 14,
                    //             fontWeight: FontWeight.w300
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
//                     ],
//                   ),

//                 ],
//               ),
//             ),