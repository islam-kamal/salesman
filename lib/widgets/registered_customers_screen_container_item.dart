
import 'package:flutter/material.dart';

class RegisteredCustomersScreenContainerItem extends StatelessWidget{
  const RegisteredCustomersScreenContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
           Container(
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
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/VectorShopp.png'
                          ),
                          SizedBox(
                                width: MediaQuery.of(context).size.width * 0.008,
                              ),
                          const Text(
                            'اسم المتجر',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
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
                              Image.asset('assets/images/Vectormnmn.png'),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.008,
                              ),
                              const Text(
                                'يبعد 232 ك.م',
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
                            Image.asset('assets/images/VectorStrokeCash.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008,
                            ),
                            const Text(
                              '15,000 مديونية',
                              style: TextStyle(
                                color: Color(0xff5F480C),
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
                            Image.asset('assets/images/VectorStrokeTruee.png'),
                            SizedBox(
                            width: MediaQuery.of(context).size.width * 0.008,
                          ),
                            const Text(
                              '30,000 مبيعات شهرية',
                              style: TextStyle(
                                color: Color(0xff1D6E4F),
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
      ],
    );
  }
}

