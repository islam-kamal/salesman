import 'package:flutter/material.dart';

class TraderFileContainer extends StatelessWidget{
  const TraderFileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.08
                          : MediaQuery.of(context).size.height * 0.114,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
              color: Colors.grey,
              width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'ملف التاجر',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.008,
                        ),
                    Container(
                                    width: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.14
                          : MediaQuery.of(context).size.width * 0.09,
                                    height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.019
                          : MediaQuery.of(context).size.height * 0.032,
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
                                  'assets/images/VerifiedCheck.png',
                                  color: const Color(0xff0056C9),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.004,
                                ),
                                const Text(
                                  'في زيارات اليوم',
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
                Image.asset(
                  'assets/images/User.png',
                  color: const Color(0xffDCDFE3),
                  height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.032
                          : MediaQuery.of(context).size.height * 0.044,
                ),
              ],
            ),
            const Expanded(
              flex: 6,
              child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          'اسم التاجر',
                          style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff25292E)
                                        ),
                        ),
                      ),
                      Text(
                        'عبدالرحمن محمد علي',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          'الرقم الهاتف',
                          style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff25292E)
                              ),
                        ),
                      ),
                      Text(
                        '966 4644 4646+',
                        style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),
          ],
        ),
        ),
    );
  }
}