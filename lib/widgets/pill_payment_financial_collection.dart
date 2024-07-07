import 'package:flutter/material.dart';
import 'package:water/basics/shared.dart';

class PillPaymentFinancialCollection extends StatelessWidget{
  const PillPaymentFinancialCollection({super.key});

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
                      const Text(
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
                    onTap: (){
                      _showFirstAlertDialog(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.23,
                        height: MediaQuery.of(context).orientation == Orientation.portrait ?
             MediaQuery.of(context).size.height * 0.04
             : MediaQuery.of(context).size.height * 0.068,
                        decoration: BoxDecoration(
                        color: const Color(0xff1D7AFC),
                        borderRadius: BorderRadius.circular(6)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/CheckCircle.png',
                                    color: Color(0xffF9F9F9)
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




void _showFirstAlertDialog(BuildContext context) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).orientation == Orientation.portrait ?
             MediaQuery.of(context).size.height * 0.19
             : MediaQuery.of(context).size.height * 0.365,
            child: Column(
              children: [
                Image.asset(
                  color: Color(0xffDD7208),
                  'assets/images/VectorError.png',
                  width: MediaQuery.of(context).size.width * 0.12,
                  ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.013,
                ),
                  const Padding(
                    padding: EdgeInsets.only(top: 11),
                    child: Text(
                      'تأكد من استلام المبلغ قبل اصدار الفاتورة',
                      style: TextStyle(
                        color: Color(0xff5F480C),
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16 , top: 10),
                    child: Text(
                      'هل تم تحصيل اجمالي 50,000 ر.س؟',
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
                        onTap: (){
                          Navigator.of(context).pop();
                          _showSecondAlertDialog(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                            height: MediaQuery.of(context).orientation == Orientation.portrait ?
             MediaQuery.of(context).size.height * 0.038
             : MediaQuery.of(context).size.height * 0.07,
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
                                    'تم استلام المبلغ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.006,
                                ),
                                Image.asset('assets/images/PrinterMinimalistic.png'),
                              ],
                            ),
                        ),
                      ),
                      
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                            height: MediaQuery.of(context).orientation == Orientation.portrait ?
             MediaQuery.of(context).size.height * 0.038
             : MediaQuery.of(context).size.height * 0.07,
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
                                  width: MediaQuery.of(context).size.width * 0.006,
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


void _showSecondAlertDialog(BuildContext context) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).orientation == Orientation.portrait ?
             MediaQuery.of(context).size.height * 0.19
             : MediaQuery.of(context).size.height * 0.375,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/imagee-truee.png',
                  width: MediaQuery.of(context).size.width * 0.12,
                  ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.008,
                ),
                  const Padding(
                    padding: EdgeInsets.only(top: 11),
                    child: Text(
                      'تم اصدار فاتورة التحصيل',
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
                     'تم اصدار فاتورة تحصيل رقم 12314 بمبلغ 50,000 ر.س للتاجر فلان',
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
                          width: MediaQuery.of(context).size.width * 0.27,
                            height: MediaQuery.of(context).orientation == Orientation.portrait ?
             MediaQuery.of(context).size.height * 0.038
             : MediaQuery.of(context).size.height * 0.07,
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
                                  width: MediaQuery.of(context).size.width * 0.006,
                                ),
                                Image.asset('assets/images/PrinterMinimalistic.png'),
                              ],
                            ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                            height: MediaQuery.of(context).orientation == Orientation.portrait ?
             MediaQuery.of(context).size.height * 0.038
             : MediaQuery.of(context).size.height * 0.07,
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
                                  width: MediaQuery.of(context).size.width * 0.006,
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

