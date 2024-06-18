import 'package:flutter/material.dart';
import 'package:water/review_product_screen.dart';

class ProductsAndPrices extends StatelessWidget{
  const ProductsAndPrices({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                flex: 2,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                width: MediaQuery.of(context).size.width * 0.245,
                height: MediaQuery.of(context).size.height * 0.25,
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
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                const Text(
                                'لأسم التاجر',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300
                                ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.008,
                                ),
                                const Opacity(
                                  opacity: 0.4,
                                  child: Text(
                                  'المنتج',
                                  style: TextStyle(
                                  fontSize: 16,
                                ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  4*مياه',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  2*مياه',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  25*مياه',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  ),
                                ),
                                const Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                  '  2*مياه',
                                  style: TextStyle(
                                    fontSize: 16,
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
                              Opacity(
                                opacity: 0.7,
                                child: Text(
                                  'المبلغ',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '42ر.س',
                                style: TextStyle(
                                  fontSize: 16,
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
                                fontSize: 18
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.9,
                            child: Text(
                              '42ر.س',
                              style: TextStyle(
                                fontSize: 17
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
                            width: 0.5,
                                        ),
                                        borderRadius: BorderRadius.circular(4)
                                      ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 18),
                           child: Row(
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
                                  color: Colors.blue,
                                  fontSize: 16,
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