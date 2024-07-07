import 'package:flutter/material.dart';
import 'package:water/review_product_screen.dart';
import 'package:water/basics/shared.dart';

class ProductsAndPricesSoldProducts extends StatelessWidget{
  const ProductsAndPricesSoldProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                flex: 2,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                width: MediaQuery.of(context).size.width * 0.245,
                height: MediaQuery.of(context).size.height * 0.21,
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
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                const Text(
                                'لأسم التاجر',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300
                                ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.008,
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  4*مياه',
                                  style: TextStyle(
                                    fontSize: 14,
                                  fontWeight: FontWeight.w300
                                  ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  2*مياه',
                                  style: TextStyle(
                                    fontSize: 14,
                                  fontWeight: FontWeight.w300
                                  ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  25*مياه',
                                  style: TextStyle(
                                     fontSize: 14,
                                  fontWeight: FontWeight.w300
                                  ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  2*مياه',
                                  style: TextStyle(
                                     fontSize: 14,
                                  fontWeight: FontWeight.w300
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
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
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
                                color: Color(0xff07326A),
                                fontWeight: FontWeight.w300,
                                 fontSize: 16,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.9,
                            child: Text(
                              '42ر.س',
                              style: TextStyle(
                                color: Color(0xff07326A),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
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
                            width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(4)
                                      ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 18),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  color: Color(0xff1D7AFC),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
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
              ),
              );
  }
}