import 'package:flutter/material.dart';
class FinishButtonDealTraderDetailsScreen extends StatelessWidget{
  const FinishButtonDealTraderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.23,
          height: MediaQuery.of(context).size.height * 0.208,
          decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8)
          ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)
                  ),
                    child: TextButton(
                    clipBehavior: Clip.hardEdge,
                    onPressed: (){},
                      child: Row(
                      children: [
                        Image.asset(
                          'assets/images/BoltCircle.png',
                          color: Colors.white,
                          width: 28,
                          ),
                        SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008,
                            ),
                        const Text(
                          'بدأ المعاملة',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white
                          ),
                          ),
                      ],
                      ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Container(
                                width: double.infinity,
                                height: MediaQuery.of(context).size.height * 0.04,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                  color: Colors.grey,
                                  width: 1.3,
                                  ),
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                  child: TextButton(
                                  clipBehavior: Clip.hardEdge,
                                  onPressed: (){},
                    child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Route.png',
                        color: Colors.black,
                        width: 28,
                        ),
                      SizedBox(
                            width: MediaQuery.of(context).size.width * 0.008,
                          ),
                      const Text(
                        'الاتجاهات',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black
                        ),
                        ),
                    ],
                    ),
                    ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.04,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                      color: Colors.grey,
                      width: 1.3,
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                      child: TextButton(
                      clipBehavior: Clip.hardEdge,
                      onPressed: (){},
                    child: Row(
                    children: [
                      Image.asset(
                        'assets/images/PhoneRounded.png',
                        color: Colors.black,
                        width: 28,
                        ),
                      SizedBox(
                            width: MediaQuery.of(context).size.width * 0.008,
                          ),
                      const Text(
                        'الإتصال بالتاجر',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black
                        ),
                        ),
                    ],
                    ),
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 14),
                      child: Container(
                                width: double.infinity,
                                height: MediaQuery.of(context).size.height * 0.04,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                  color: Colors.grey,
                                  width: 1.3,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                  child: TextButton(
                                  clipBehavior: Clip.hardEdge,
                                  onPressed: (){},
                    child: Row(
                    children: [
                      Image.asset(
                        'assets/images/History3.png',
                        color: Colors.black,
                        width: 28,
                        ),
                      SizedBox(
                            width: MediaQuery.of(context).size.width * 0.008,
                          ),
                      const Text(
                        'تاريخ الزيارات',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black
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
    );
  }
}