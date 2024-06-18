import 'package:flutter/material.dart';

class PillPayment extends StatelessWidget{
  const PillPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Banknote2.png'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.007,
                      ),
                      Text(
                        'متبقى 25,000 ر.س',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  ),
                )
                ),
                Expanded(
                  flex: 3,
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.23,
                        height: MediaQuery.of(context).size.height * 0.038,
                        decoration: BoxDecoration(
                        color: Color(0xff1D7AFC),
                        borderRadius: BorderRadius.circular(6)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/CheckCircle.png',
                                    color: Colors.white
                                    ),
                                    SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.006,
                                  ),
                                  const Opacity(
                                    opacity: 0.7,
                                    child: Text(
                                      'اصدار الفاتورة',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300
                                      ),
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
      ],
    );
  }
}


