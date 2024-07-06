import 'package:flutter/material.dart';
import 'package:water/widgets/transection_row_in_indebtedness_container.dart';
import 'package:water/basics/shared.dart';

class IndebtednessContainer extends StatelessWidget {
  const IndebtednessContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Shared.height * 0.208,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: Shared.width * 0.034),
                  child: Container(
                    width: Shared.width * 0.145,
                    height: Shared.height * 0.019,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 244),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/DangerTriangle.png',
                            color: const Color(0xffDD7208),
                          ),
                          SizedBox(
                            width: Shared.width * 0.004,
                          ),
                          const Text(
                            'مديونية مرتفعة',
                            style: TextStyle(
                                color: Color(0xff5F480C),
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/moneyBaggg.png',
                  color: const Color(0xffDCDFE3),
                  height: Shared.height * 0.03,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: Shared.width * 0.06),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/BillList.png',
                          color: const Color(0xff111111),
                          width: Shared.height * 0.014,
                          height: Shared.height * 0.0144,
                        ),
                        SizedBox(
                          width: Shared.width * 0.006,
                        ),
                        const Text(
                          'نوع الفاتورة',
                          style: TextStyle(
                              color: Color(0xff111111),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/costThis.png',
                        width: Shared.height * 0.014,
                        height: Shared.height * 0.0144,
                        color: const Color(0xff111111),
                      ),
                      SizedBox(
                        width: Shared.width * 0.006,
                      ),
                      const Text(
                        'المبلغ',
                        style: TextStyle(
                            color: Color(0xff111111),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/CalendarMark.png',
                        width: Shared.height * 0.014,
                        height: Shared.height * 0.0144,
                        color: const Color(0xff111111),
                      ),
                      SizedBox(
                        width: Shared.width * 0.006,
                      ),
                      const Text(
                        'التاريخ',
                        style: TextStyle(
                            color: Color(0xff111111),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Shared.height * 0.008,
            ),
            const TransectionRowInIndebtednessContainer(
              image: 'assets/images/BillList.png',
              name: 'أمر بيع',
              color: Color(0xff0056C9),
            ),
            SizedBox(
              height: Shared.height * 0.008,
            ),
            const TransectionRowInIndebtednessContainer(
              image: 'assets/images/RestartCircle.png',
              name: 'مرتجع',
              color: Color(0xff5F480C),
            ),
            SizedBox(
              height: Shared.height * 0.008,
            ),
            const TransectionRowInIndebtednessContainer(
              image: 'assets/images/BillList.png',
              name: 'أمر بيع',
              color: Color(0xff0056C9),
            ),
            SizedBox(
              height: Shared.height * 0.008,
            ),
            const TransectionRowInIndebtednessContainer(
              image: 'assets/images/MoneyBag.png',
              name: 'تحصيل',
              color: Color(0xff1D6E4F),
            ),
            SizedBox(
              height: Shared.height * 0.008,
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: Shared.height * 0.2,
                      height: Shared.height * 0.042,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.4,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/fileIndebeness.png',
                            width: Shared.width * 0.025,
                          ),
                          SizedBox(
                    width: Shared.width * 0.003,
                              ),
                          const Opacity(
                            opacity: 0.9,
                            child: Text(
                              'اظهار ملف المديونية',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: Shared.height * 0.2,
                      height: Shared.height * 0.042,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.4,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/History3.png',
                            width: Shared.width * 0.025,
                          ),
                          SizedBox(
                    width: Shared.width * 0.003,
                              ),
                          const Opacity(
                            opacity: 0.9,
                            child: Text(
                              'اظهار تاريخ الزيارات',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
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
  }
}
