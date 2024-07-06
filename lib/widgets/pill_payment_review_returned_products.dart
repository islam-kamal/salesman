import 'package:flutter/material.dart';
import 'package:water/basics/shared.dart';

class PillPaymentReviewReturnedProducts extends StatelessWidget{
  const PillPaymentReviewReturnedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              const Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Row(
                    children: [
                      Text(
                        '',
                      ),
                    ],
                  ),
                )
                ),
                Expanded(
                  flex: 3,
                  child: InkWell(
                    onTap: (){
                      _showAlertDialog(context);
                    },
                    child: Container(
                      width: Shared.width * 0.23,
                        height: Shared.height * 0.038,
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
                                    width: Shared.width * 0.006,
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




void _showAlertDialog(BuildContext context) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: Shared.width * 0.6,
            height: Shared.height * 0.195,
            child: Column(
              children: [
                Image.asset(
                  color: Color(0xff23A36D),
                  'assets/images/imagee-truee.png',
                  width: Shared.width * 0.12,
                  ),
                SizedBox(
                  height: Shared.height * 0.013,
                ),
                  const Padding(
                    padding: EdgeInsets.only(top: 11),
                    child: Text(
                      'تم اصدار فاتورة المرتجع',
                      style: TextStyle(
                        color: Color(0xff1D6E4F),
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16 , top: 10),
                    child: Text(
                      'تم اصدار فاتورة مرتجع رقم 12314 ب50 منتج للتاجر فلان',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: Shared.width * 0.27,
                            height: Shared.height * 0.038,
                            decoration: BoxDecoration(
                            color: Color(0xff1D7AFC),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Opacity(
                                  opacity: 0.8,
                                  child: Text(
                                    'طباعة الفاتورة',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Shared.width * 0.006,
                                ),
                                Image.asset('assets/images/PrinterMinimalistic.png'),
                              ],
                            ),
                        ),
                      ),
                      
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: Shared.width * 0.27,
                            height: Shared.height * 0.038,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Color.fromARGB(255, 198, 195, 195),
                            width: 0.8,
                            ),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'الرجوع للزيارة',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(
                                  width: Shared.width * 0.006,
                                ),
                                Image.asset('assets/images/arrowww.png'),
                              ],
                            ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }